class MealListsController < InheritedResources::Base
 
def add_meal_to_meal_list
  selections = Meal.find(params[:meals][:meal_id]) rescue nil
   if @selections != nil
    @selections.each do |meal|
     MealList.create(:meal_id => meal.meal_id)
    end     
   end      
    respond_to do |format|
      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }
    end   
 end

def create
  
  @meal_list = MealList.create(meal_list_params)
   respond_to do |format|
      if @meal_list.save
        format.html { redirect_to homepages_path, notice: 'Child successfully registered!' }
        format.json { render action: 'show', status: :created, location: @meal_list}
      else
        format.html { render action: 'new' }
        format.json { render json: @meal_list.errors, status: :unprocessable_entity }
      end
    end
end
  private

    def meal_list_params
      params.require(:meal_list).permit(:meal_id, :franchise_id)
    end
end

	