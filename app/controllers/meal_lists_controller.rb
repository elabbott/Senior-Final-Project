class MealListsController < InheritedResources::Base
 
def add_meal_to_meal_list
  @meal_list = MealList.create(meal_list_params)
  @meal_list.meal_id = params.key('Add Meal')
  @meal_list.franchise_id = Franchise.find_by_id(params[:franchise_id]).id

    respond_to do |format|
      format.html { redirect_to homepages_url, notice: 'Meal added to franchise!' }
    end   
 end

def create
  @meal_list = MealList.new(meal_list_params)
  @meal_list.meal_id = params.key('Add Meal')
  @meal_list.franchise_id = current_user.id
  @meal_list.zipcode = current_user.zipcode
  @meal_list.save
   respond_to do |format|
    format.html { redirect_to homepages_url, notice: 'Meal added to franchise!' }
    end
end
def destroy
    @meal_list.destroy
    respond_to do |format|
      format.html{redirect_to homepages_url, notice: 'Meal was deleted'}
    end
  end
def new
    @meal_list = MealList.new
    respond_with(@meal_list)
  end
  private
  def set_meal_list
      @meal_list = MealList.find(params[:id])
    end

    def meal_list_params
      params.require(:meal_list).permit(:meal_id, :franchise_id, :zipcode)
    end
end

	