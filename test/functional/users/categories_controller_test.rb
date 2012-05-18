require 'test_helper'

class Users::CategoriesControllerTest < ActionController::TestCase
  setup do
    @users_category = users_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_category" do
    assert_difference('Users::Category.count') do
      post :create, users_category: @users_category.attributes
    end

    assert_redirected_to users_category_path(assigns(:users_category))
  end

  test "should show users_category" do
    get :show, id: @users_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_category
    assert_response :success
  end

  test "should update users_category" do
    put :update, id: @users_category, users_category: @users_category.attributes
    assert_redirected_to users_category_path(assigns(:users_category))
  end

  test "should destroy users_category" do
    assert_difference('Users::Category.count', -1) do
      delete :destroy, id: @users_category
    end

    assert_redirected_to users_categories_path
  end
end
