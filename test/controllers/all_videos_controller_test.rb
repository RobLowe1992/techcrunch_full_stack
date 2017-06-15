require 'test_helper'

class AllVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_video = all_videos(:one)
  end

  test "should get index" do
    get all_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_all_video_url
    assert_response :success
  end

  test "should create all_video" do
    assert_difference('AllVideo.count') do
      post all_videos_url, params: { all_video: {  } }
    end

    assert_redirected_to all_video_url(AllVideo.last)
  end

  test "should show all_video" do
    get all_video_url(@all_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_video_url(@all_video)
    assert_response :success
  end

  test "should update all_video" do
    patch all_video_url(@all_video), params: { all_video: {  } }
    assert_redirected_to all_video_url(@all_video)
  end

  test "should destroy all_video" do
    assert_difference('AllVideo.count', -1) do
      delete all_video_url(@all_video)
    end

    assert_redirected_to all_videos_url
  end
end
