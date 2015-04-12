class FeedbacksController < InheritedResources::Base

    def create
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
      if @feedback.save
        format.html { redirect_to homepages_url, notice: 'Feedback submitted!' }
      else
        format.html {render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private

    def feedback_params
      params.require(:feedback).permit(:f_type, :title, :descr, :date_submitted)
    end
end

