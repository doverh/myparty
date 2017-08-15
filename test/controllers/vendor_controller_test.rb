require 'test_helper'

class VendorControllerTest < ActionDispatch::IntegrationTest
  test "should get new_vendor" do
    get vendor_new_vendor_url
    assert_response :success
  end

end
