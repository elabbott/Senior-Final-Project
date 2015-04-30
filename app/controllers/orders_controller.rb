class OrdersController < InheritedResources::Base
  
  
 
  private

    def order_params
      params.require(:order).permit(:price, :user_id, :pay_type, :date_for_meal)
    end
end

