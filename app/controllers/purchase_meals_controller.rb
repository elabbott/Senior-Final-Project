class PurchaseMealsController < InheritedResources::Base
 def process_add_meal_to_child
   @selections = Meal.find(params[:meals][:meal_id]) rescue nil
   @child = Child.find_by_id(params[:child_id])
   @school = School.find_by_id(@child.school_id)
   if @selections != nil
   @selections.each do |meal|
     PurchaseMeal.create(:parent_id => current_user.id, :child_id => @child.id, :school_id => @school.id, :paid => false )
   end
     
     
   end
      
    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }

    end
  end
  private

    def purchase_meal_params
      params.require(:purchase_meal).permit()
    end
end

