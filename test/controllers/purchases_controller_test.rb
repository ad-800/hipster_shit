require "test_helper"

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  test "should get :new" do
    get purchases_:new_url
    assert_response :success
  end

  test "should get :create" do
    get purchases_:create_url
    assert_response :success
  end
end
