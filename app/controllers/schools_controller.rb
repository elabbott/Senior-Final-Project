class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  respond_to :html
  def index
    @schools = School.all
    respond_with(@schools)
  end

  def show
    respond_with(@school)
  end

  def new
    @school = School.new
    respond_with(@school)
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.save
    respond_with(@school)
  end

  def update
    @school.update(school_params)
    respond_with(@school)
  end

  def destroy
    @school.destroy
    respond_with(@school)
  end

  def add_children
    @children = Child.find(params[:school][:student_id]) rescue nil
   
      @children.each do |child|
        child.update_attributes(:user_id => current_user.id)
      
    end

    respond_to do |format|

      format.html { redirect_to homepages_url, notice: 'Children assigned successfully!' }

    end
  end

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :address, :school_id, :user_id, :int[], :meal_id, :int[])
  end
end
