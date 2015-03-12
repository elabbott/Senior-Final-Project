class PaymentInfosController < InheritedResources::Base

  private

    def payment_info_params
      params.require(:payment_info).permit(:name, :c_type, :cnum, :expdate, :cvv)
    end
end

