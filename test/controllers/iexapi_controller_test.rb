require 'test_helper'

class IexapiControllerTest < ActionDispatch::IntegrationTest
  test "should get collection" do
    get iexapi_collection_url
    assert_response :success
  end

end
