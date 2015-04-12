class MealListsController < InheritedResources::Base

  private

    def meal_list_params
      params.require(:meal_list).permit(:meal_id, :franchise_id)
    end
end

