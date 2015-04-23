require 'test_helper'

class ParentChildrenControllerTest < ActionController::TestCase
  setup do
    @parent_child = parent_children(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parent_children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent_child" do
    assert_difference('ParentChild.count') do
      post :create, parent_child: {  }
    end

    assert_redirected_to parent_child_path(assigns(:parent_child))
  end

  test "should show parent_child" do
    get :show, id: @parent_child
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent_child
    assert_response :success
  end

  test "should update parent_child" do
    patch :update, id: @parent_child, parent_child: {  }
    assert_redirected_to parent_child_path(assigns(:parent_child))
  end

  test "should destroy parent_child" do
    assert_difference('ParentChild.count', -1) do
      delete :destroy, id: @parent_child
    end

    assert_redirected_to parent_children_path
  end
end
