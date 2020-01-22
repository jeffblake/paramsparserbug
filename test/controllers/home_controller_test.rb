require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test 'invalid json returns bad_request' do
    post '/', params: '{', env: {'RAW_POST_DATA' => '{'}, as: :json

    assert_response :bad_request
  end

end
