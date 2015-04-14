require 'test_helper'

class MealListsControllerTest < ActionController::TestCase
  setup do
    @meal_list = meal_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_list" do
    assert_difference('MealList.count') do
      post :create, meal_list: { franchise_id: @meal_list.franchise_id, meal_id: @meal_list.meal_id }
    end

    assert_redirected_to meal_list_path(assigns(:meal_list))
  end

  test "should show meal_list" do
    get :show, id: @meal_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_list
    assert_response :success
  end

  test "should update meal_list" do
    patch :update, id: @meal_list, meal_list: { franchise_id: @meal_list.franchise_id, meal_id: @meal_list.meal_id }
    assert_redirected_to meal_list_path(assigns(:meal_list))
  end

  test "should destroy meal_list" do
    assert_difference('MealList.count', -1) do
      delete :destroy, id: @meal_list
    end

    assert_redirected_to meal_lists_path
  end
end
