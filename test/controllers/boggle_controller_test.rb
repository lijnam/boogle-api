require "test_helper"

class BoggleControllerTest < ActionDispatch::IntegrationTest
  test "should get board" do
    get "/api/v1/boggle"
    assert_response :success
    assert_not_empty(@response.body)
    @response=JSON.parse(@response.body)
    assert_not_empty(@response["board"])
    # puts @response['board'][0].length
    assert_equal(4,@response['board'][0].length)
  end
end
