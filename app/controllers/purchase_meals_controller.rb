class PurchaseMealsController < InheritedResources::Base
 def process_add_meal_to_child
   @selections = Meal.where(:id => MealList.find(params[:meals][:meal_id])) rescue nil
   # @franchises = Franchise.where(:user_id => MealList.find(params[:meals][:franchise_id])) rescue nil
   @child = Child.find_by_id(params[:child_id])
   @school = School.find_by_id(@child.school_id)
   @date = params[:date]
   @total = 0.0
   @franchise_id = params[:franchise_id]
   # @franchise = Franchise.where(:user_id => @franchise_id)
   
   
   if @selections != nil
     @selections.each do |meal|
      # MealList.where(:meal_id => meal.id).each do |meal_list|
      #   @franchise = Franchise.where(:user_id => meal_list.franchise_id)
      # end
      # @franchise_id_value = params.key('franchise_id')
      PurchaseMeal.create(:parent_id => current_user.id, :child_id => @child.id, :school_id => @school.id, :paid => false, :date_for_meal => @date, :meal_id => meal.id)
      @total = @total+meal.price
     end

     @order = Order.create(:price => @total, :parent_id => current_user.id, :child_id => @child.id, :complete => false, :date_for_meal => @date)


     PurchaseMeal.where(:date_for_meal => @order.date_for_meal).each do |purchase_meal|
        purchase_meal.update_attributes(:order_id => @order.id)
     end

   end
      
    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }

    end
  end
  private

    def purchase_meal_params
      params.require(:purchase_meal).permit(:paid, :order_id)
    end
end