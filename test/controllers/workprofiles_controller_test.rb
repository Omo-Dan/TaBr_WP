require "test_helper"

class WorkprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workprofile = workprofiles(:one)
  end

  test "should get index" do
    get workprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_workprofile_url
    assert_response :success
  end

  test "should create workprofile" do
    assert_difference('Workprofile.count') do
      post workprofiles_url, params: { workprofile: { company: @workprofile.company, end_date: @workprofile.end_date, experience_type: @workprofile.experience_type, industry: @workprofile.industry, location: @workprofile.location, position_name: @workprofile.position_name, position_title: @workprofile.position_title, start_date: @workprofile.start_date } }
    end

    assert_redirected_to workprofile_url(Workprofile.last)
  end

  test "should show workprofile" do
    get workprofile_url(@workprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_workprofile_url(@workprofile)
    assert_response :success
  end

  test "should update workprofile" do
    patch workprofile_url(@workprofile), params: { workprofile: { company: @workprofile.company, end_date: @workprofile.end_date, experience_type: @workprofile.experience_type, industry: @workprofile.industry, location: @workprofile.location, position_name: @workprofile.position_name, position_title: @workprofile.position_title, start_date: @workprofile.start_date } }
    assert_redirected_to workprofile_url(@workprofile)
  end

  test "should destroy workprofile" do
    assert_difference('Workprofile.count', -1) do
      delete workprofile_url(@workprofile)
    end

    assert_redirected_to workprofiles_url
  end
end
