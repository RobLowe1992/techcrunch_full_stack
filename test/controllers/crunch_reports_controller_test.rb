require 'test_helper'

class CrunchReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crunch_report = crunch_reports(:one)
  end

  test "should get index" do
    get crunch_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_crunch_report_url
    assert_response :success
  end

  test "should create crunch_report" do
    assert_difference('CrunchReport.count') do
      post crunch_reports_url, params: { crunch_report: {  } }
    end

    assert_redirected_to crunch_report_url(CrunchReport.last)
  end

  test "should show crunch_report" do
    get crunch_report_url(@crunch_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_crunch_report_url(@crunch_report)
    assert_response :success
  end

  test "should update crunch_report" do
    patch crunch_report_url(@crunch_report), params: { crunch_report: {  } }
    assert_redirected_to crunch_report_url(@crunch_report)
  end

  test "should destroy crunch_report" do
    assert_difference('CrunchReport.count', -1) do
      delete crunch_report_url(@crunch_report)
    end

    assert_redirected_to crunch_reports_url
  end
end
