require "test_helper"

class SpellcheckControllerTest < ActionDispatch::IntegrationTest
  test "should check correct spenning " do
    get "/api/v1/spellcheck/correct"
    assert_response :success
    assert_not_empty(@response.body)
    @response = JSON.parse(@response.body)
    assert_equal(true, @response["status"])
  end

  test "should check incorrect spenning " do
    get "/api/v1/spellcheck/dsfsdf"
    assert_response :success
    assert_not_empty(@response.body)
    @response = JSON.parse(@response.body)
    assert_equal(false, @response["status"])
  end
end
