class OrdersController < InheritedResources::Base
  
  
 
def process_feedback
  
      @order = Order.find_by_id(params[:order_id]) rescue nil
    @order.update_attributes(:feedback_flag => true, :feedback => params[:feedback])
  respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Thank you for your input!' }

    end
end
  private

    def order_params
      params.require(:order).permit(:price, :user_id, :pay_type, :date_for_meal)
    end
end

