require "test_helper"

class FirstAccessFlowTest < ActionDispatch::IntegrationTest
  setup do
    @serializer = ActiveSupport::MessageVerifier.new(
      Rails.application.secret_key_base,
      digest: "SHA1",
      serializer:ActiveSupport::MessageEncryptor::NullSerializer
    )
  end

  test "First access" do
    get root_path
    assert_response :redirect

    follow_redirect!
    assert_response :success
    
    assert_equal 2, Pool.count
    assert_not_empty cookies[:_session_pool_id]
  end

  test "Not first access" do
    get root_path
    assert_response :redirect
    
    get root_path
    assert_response :redirect

    follow_redirect!
    assert_response :success

    assert_equal 2, Pool.count
  end
end
