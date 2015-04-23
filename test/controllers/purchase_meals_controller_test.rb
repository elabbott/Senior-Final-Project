require 'test_helper'

class PurchaseMealsControllerTest < ActionController::TestCase
  setup do
    @purchase_meal = purchase_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_meal" do
    assert_difference('PurchaseMeal.count') do
      post :create, purchase_meal: {  }
    end

    assert_redirected_to purchase_meal_path(assigns(:purchase_meal))
  end

  test "should show purchase_meal" do
    get :show, id: @purchase_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_meal
    assert_response :success
  end

  test "should update purchase_meal" do
    patch :update, id: @purchase_meal, purchase_meal: {  }
    assert_redirected_to purchase_meal_path(assigns(:purchase_meal))
  end

  test "should destroy purchase_meal" do
    assert_difference('PurchaseMeal.count', -1) do
      delete :destroy, id: @purchase_meal
    end

    assert_redirected_to purchase_meals_path
  end
end
