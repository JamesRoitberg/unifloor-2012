require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get accessories" do
    get :accessories
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get unifloor" do
    get :unifloor
    assert_response :success
  end

end
