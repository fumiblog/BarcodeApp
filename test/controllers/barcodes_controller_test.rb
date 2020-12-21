require 'test_helper'

class BarcodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get barcodes_index_url
    assert_response :success
  end

end
