class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @meals = Meal.all
  end

  def show
    respond_with(@meal)
  end

  def new
    @meal = Meal.new
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

 def add_meals_to_meal_list
  @meal_list = MealList.find_by_id(params[:child])
  Meal.find(params[:meals][:meal_id]).each do |m|
   if @selections != nil
    @selections.each do |meal|
     MealList.create(:meal_id => meal.meal_id)
    end     
   end      
    respond_to do |format|
      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }
    end   
 end
 def add_meal_to_meal_list
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


