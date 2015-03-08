class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @meals = Meal.all
    respond_with(@meals)
  end

  def show
    respond_with(@meal)
  end

  def new
    @meal = Meal.new
    respond_with(@meal)
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params)
    respond_to do |format|
      if @meal.save
        format.html { redirect_to homepages_url, notice: 'Meal was created successfully!' }
      else
        format.html {render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @meal.update(meal_params)
    respond_to do |format|
      if @meal.save
        format.html { redirect_to homepages_url, notice: 'Meal was created successfully!' }
      else
        format.html {render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meal.destroy
    respond_with(@meal)
  end

  private
    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:name, :description, :calories, :price)
    end
end


