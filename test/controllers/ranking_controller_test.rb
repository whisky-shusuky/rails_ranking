require 'test_helper'

class RankingControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get ranking_search_url
    assert_response :success
  end

end
