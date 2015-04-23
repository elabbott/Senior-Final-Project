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
  
  def process_add_meal_to_child
    @child = Child.find_by_id(params[:child])
    Meal.find(params[:meals][:meal_id]).each do |m|
      
      @child.update_attributes(:meal_id => m.id)
      
    end      
    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }

    end
  end
  
  
  def add_meal_to_child
    @meals = Meal.all
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
def process_add_meal_to_franchise
end
def add_meal_to_franchise
    @meals = Meal.all
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


