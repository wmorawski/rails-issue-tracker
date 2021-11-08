require "test_helper"

class IssueStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue_status = issue_statuses(:one)
  end

  test "should get index" do
    get issue_statuses_url, as: :json
    assert_response :success
  end

  test "should create issue_status" do
    assert_difference('IssueStatus.count') do
      post issue_statuses_url, params: { issue_status: { color: @issue_status.color, marks_as_closed: @issue_status.marks_as_closed, name: @issue_status.name } }, as: :json
    end

    assert_response 201
  end

  test "should show issue_status" do
    get issue_status_url(@issue_status), as: :json
    assert_response :success
  end

  test "should update issue_status" do
    patch issue_status_url(@issue_status), params: { issue_status: { color: @issue_status.color, marks_as_closed: @issue_status.marks_as_closed, name: @issue_status.name } }, as: :json
    assert_response 200
  end

  test "should destroy issue_status" do
    assert_difference('IssueStatus.count', -1) do
      delete issue_status_url(@issue_status), as: :json
    end

    assert_response 204
  end
end
