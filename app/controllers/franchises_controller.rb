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
  end

  def create

    @franchise = Franchise.new(franchise_params)
    #@franchise.school_id = Franchise.find(params[:school_id])
    @franchise.user_id = current_user.id
    @franchise.zipcode = current_user.zipcode
    @franchise.save
    respond_with(@franchise)
  end

  def update
    @franchise.update(franchise_params)
    respond_with(@franchise)
  end

  def destroy
    @franchise.destroy
    respond_with(@franchise)
  end
  def approve
    @franchise.approve = true
  end




  private
    def set_franchise
      @franchise = Franchise.find(params[:id])
    end

    def franchise_params
      params.require(:franchise).permit(:email, :encrypted_password, :address, :fid, :school_id)
    end
end
