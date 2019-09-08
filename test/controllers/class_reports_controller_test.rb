require 'test_helper'

class ClassReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_report = class_reports(:one)
  end

  test "should get index" do
    get class_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_class_report_url
    assert_response :success
  end

  test "should create class_report" do
    assert_difference('ClassReport.count') do
      post class_reports_url, params: { class_report: {  } }
    end

    assert_redirected_to class_report_url(ClassReport.last)
  end

  test "should show class_report" do
    get class_report_url(@class_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_report_url(@class_report)
    assert_response :success
  end

  test "should update class_report" do
    patch class_report_url(@class_report), params: { class_report: {  } }
    assert_redirected_to class_report_url(@class_report)
  end

  test "should destroy class_report" do
    assert_difference('ClassReport.count', -1) do
      delete class_report_url(@class_report)
    end

    assert_redirected_to class_reports_url
  end
end
