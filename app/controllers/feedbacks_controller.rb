class FeedbacksController < InheritedResources::Base

  private

    def feedback_params
      params.require(:feedback).permit(:f_type, :title, :descr, :date_submitted)
    end
end

