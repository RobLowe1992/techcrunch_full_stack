require 'test_helper'

class BullishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bullish = bullishes(:one)
  end

  test "should get index" do
    get bullishes_url
    assert_response :success
  end

  test "should get new" do
    get new_bullish_url
    assert_response :success
  end

  test "should create bullish" do
    assert_difference('Bullish.count') do
      post bullishes_url, params: { bullish: {  } }
    end

    assert_redirected_to bullish_url(Bullish.last)
  end

  test "should show bullish" do
    get bullish_url(@bullish)
    assert_response :success
  end

  test "should get edit" do
    get edit_bullish_url(@bullish)
    assert_response :success
  end

  test "should update bullish" do
    patch bullish_url(@bullish), params: { bullish: {  } }
    assert_redirected_to bullish_url(@bullish)
  end

  test "should destroy bullish" do
    assert_difference('Bullish.count', -1) do
      delete bullish_url(@bullish)
    end

    assert_redirected_to bullishes_url
  end
end
