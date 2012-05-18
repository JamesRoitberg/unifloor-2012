require 'test_helper'

class Users::ProductsControllerTest < ActionController::TestCase
  setup do
    @users_product = users_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_product" do
    assert_difference('Users::Product.count') do
      post :create, users_product: @users_product.attributes
    end

    assert_redirected_to users_product_path(assigns(:users_product))
  end

  test "should show users_product" do
    get :show, id: @users_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_product
    assert_response :success
  end

  test "should update users_product" do
    put :update, id: @users_product, users_product: @users_product.attributes
    assert_redirected_to users_product_path(assigns(:users_product))
  end

  test "should destroy users_product" do
    assert_difference('Users::Product.count', -1) do
      delete :destroy, id: @users_product
    end

    assert_redirected_to users_products_path
  end
end
