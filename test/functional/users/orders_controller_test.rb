require 'test_helper'

class Users::OrdersControllerTest < ActionController::TestCase
  setup do
    @users_order = users_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_order" do
    assert_difference('Users::Order.count') do
      post :create, users_order: @users_order.attributes
    end

    assert_redirected_to users_order_path(assigns(:users_order))
  end

  test "should show users_order" do
    get :show, id: @users_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_order
    assert_response :success
  end

  test "should update users_order" do
    put :update, id: @users_order, users_order: @users_order.attributes
    assert_redirected_to users_order_path(assigns(:users_order))
  end

  test "should destroy users_order" do
    assert_difference('Users::Order.count', -1) do
      delete :destroy, id: @users_order
    end

    assert_redirected_to users_orders_path
  end
end
