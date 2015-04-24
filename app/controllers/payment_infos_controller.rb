class PaymentInfosController < InheritedResources::Base
  def process_payment

    @order = Order.find_by_id(params[:order_id]) rescue nil

    @savedpayment = PaymentInfo.find_by_id(params[:payment][:payment_id]) rescue nil
    if @savedpayment != nil

    @order.update_attributes(:complete => true)

    end
    if params[:savecard] == "Save" && params[:cnum].size == 16
      event = params[:expdate]
      @date = Date.new event["{:start_year=>2015}(1i)"].to_i, event["{:start_year=>2015}(2i)"].to_i, event["{:start_year=>2015}(3i)"].to_i
      @payment = PaymentInfo.create(:name => params[:name], :c_type => params[:c_type], :cnum => params[:cnum], :cvv => params[:cvv])
      @payment.update_attributes(:order_id => @order.id, :parent_id => current_user.id, :child_id => @order.child_id, :expdate => @date)
          @order.update_attributes(:complete => true)

    end

    respond_to do |format|
      if params[:cnum].size != 16 && @savedpayment == nil
        format.html { redirect_to homepages_url, alert: 'Payment error, make sure card number is 16 digits!' }
      else
        format.html { redirect_to homepages_url, notice: 'Payment submitted!' }
      end

    end
  end

  private

  def payment_info_params
    params.require(:payment_info).permit(:name, :c_type, :cnum, :expdate, :cvv)
  end
end

