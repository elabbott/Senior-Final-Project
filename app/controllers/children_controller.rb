class ChildrenController < InheritedResources::Base




def create
  
  @child = Child.create(child_params)
   respond_to do |format|
      if @child.save
        format.html { redirect_to homepages_path, notice: 'Child successfully registered!' }
        format.json { render action: 'show', status: :created, location: @child}
      else
        format.html { render action: 'new' }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
end





  private

    def child_params
      params.require(:child).permit(:name, :dob, :parent_id, :school_id, :approved)
    end
end

