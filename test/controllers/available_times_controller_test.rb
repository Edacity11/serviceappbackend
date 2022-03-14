require "test_helper"

class AvailableTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_time = available_times(:one)
  end

  test "should get index" do
    get available_times_url, as: :json
    assert_response :success
  end

  test "should create available_time" do
    assert_difference("AvailableTime.count") do
      post available_times_url, params: { available_time: { available_date_id: @available_time.available_date_id, time: @available_time.time } }, as: :json
    end

    assert_response :created
  end

  test "should show available_time" do
    get available_time_url(@available_time), as: :json
    assert_response :success
  end

  test "should update available_time" do
    patch available_time_url(@available_time), params: { available_time: { available_date_id: @available_time.available_date_id, time: @available_time.time } }, as: :json
    assert_response :success
  end

  test "should destroy available_time" do
    assert_difference("AvailableTime.count", -1) do
      delete available_time_url(@available_time), as: :json
    end

    assert_response :no_content
  end
end
