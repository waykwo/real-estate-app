require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/homes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Home.count, data.length
  end

end