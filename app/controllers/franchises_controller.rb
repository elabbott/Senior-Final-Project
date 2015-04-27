class FranchisesController < ApplicationController
  before_action :set_franchise, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @franchises = Franchise.all
    respond_with(@franchises)
  end

  def show
    respond_with(@franchise)
  end

  def new
    @franchise = Franchise.new
    respond_with(@franchise)
  end

  def edit
    @franchise =Franchise.find(params[:id])
  end

  def create

    @franchise = Franchise.new(franchise_params)
    @franchise.school_id = params.key('Add School')
    @franchise.user_id = current_user.id
    @franchise.zipcode = current_user.zipcode
    @franchise.save
    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Franchise created, waiting on approval!' }
    end
  end

  def update
    @franchise.update(franchise_params)
    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Franchise information was updated!' }
    end
  end

  def destroy
    @franchise.destroy
    respond_to do |format|
      format.html{redirect_to homepages_url, notice: 'Franchise was deleted'}
    end
  end
  def approve
    @franchise.approve = true
     format.html{redirect_to homepages_url, notice: 'Franchise was approved'}
  end
 def process_add_meal_list_to_franchise
   @selections = Meal.find(params[:meals][:meal_id]) rescue nil
   if @selections != nil
    @selections.each do |meal|
     MealList.create(:franchise_id => @franchise.id)#, :meal_id => meal.meal_id)
    end     
   end      
    respond_to do |format|
      format.html { redirect_to homepages_url, notice: 'Meals assigned successfully!' }
    end
  end



  private
    def set_franchise
      @franchise = Franchise.find(params[:id])
    end

    def franchise_params
      params.require(:franchise).permit(:zipcode, :approved,:school_id, :name)
    end
end
