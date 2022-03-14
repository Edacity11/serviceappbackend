require "test_helper"

class AvailableDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_date = available_dates(:one)
  end

  test "should get index" do
    get available_dates_url, as: :json
    assert_response :success
  end

  test "should create available_date" do
    assert_difference("AvailableDate.count") do
      post available_dates_url, params: { available_date: { date: @available_date.date, service_id: @available_date.service_id } }, as: :json
    end

    assert_response :created
  end

  test "should show available_date" do
    get available_date_url(@available_date), as: :json
    assert_response :success
  end

  test "should update available_date" do
    patch available_date_url(@available_date), params: { available_date: { date: @available_date.date, service_id: @available_date.service_id } }, as: :json
    assert_response :success
  end

  test "should destroy available_date" do
    assert_difference("AvailableDate.count", -1) do
      delete available_date_url(@available_date), as: :json
    end

    assert_response :no_content
  end
end
