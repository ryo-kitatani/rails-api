require "test_helper"

class WritersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writer = writers(:one)
  end

  test "should get index" do
    get writers_url, as: :json
    assert_response :success
  end

  test "should create writer" do
    assert_difference("Writer.count") do
      post writers_url, params: { writer: { name: @writer.name } }, as: :json
    end

    assert_response :created
  end

  test "should show writer" do
    get writer_url(@writer), as: :json
    assert_response :success
  end

  test "should update writer" do
    patch writer_url(@writer), params: { writer: { name: @writer.name } }, as: :json
    assert_response :success
  end

  test "should destroy writer" do
    assert_difference("Writer.count", -1) do
      delete writer_url(@writer), as: :json
    end

    assert_response :no_content
  end
end
