require 'test_helper'

class DisruptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disrupt = disrupts(:one)
  end

  test "should get index" do
    get disrupts_url
    assert_response :success
  end

  test "should get new" do
    get new_disrupt_url
    assert_response :success
  end

  test "should create disrupt" do
    assert_difference('Disrupt.count') do
      post disrupts_url, params: { disrupt: {  } }
    end

    assert_redirected_to disrupt_url(Disrupt.last)
  end

  test "should show disrupt" do
    get disrupt_url(@disrupt)
    assert_response :success
  end

  test "should get edit" do
    get edit_disrupt_url(@disrupt)
    assert_response :success
  end

  test "should update disrupt" do
    patch disrupt_url(@disrupt), params: { disrupt: {  } }
    assert_redirected_to disrupt_url(@disrupt)
  end

  test "should destroy disrupt" do
    assert_difference('Disrupt.count', -1) do
      delete disrupt_url(@disrupt)
    end

    assert_redirected_to disrupts_url
  end
end
