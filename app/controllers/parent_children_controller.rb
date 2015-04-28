class ParentChildrenController < InheritedResources::Base

  private

    def parent_child_params
      params.require(:parent_child).permit()
    end
end

