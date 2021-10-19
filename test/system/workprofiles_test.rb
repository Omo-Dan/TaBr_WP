require "application_system_test_case"

class WorkprofilesTest < ApplicationSystemTestCase
  setup do
    @workprofile = workprofiles(:one)
  end

  test "visiting the index" do
    visit workprofiles_url
    assert_selector "h1", text: "Workprofiles"
  end

  test "creating a Workprofile" do
    visit workprofiles_url
    click_on "New Workprofile"

    fill_in "Company", with: @workprofile.company
    fill_in "End date", with: @workprofile.end_date
    fill_in "Experience type", with: @workprofile.experience_type
    fill_in "Industry", with: @workprofile.industry
    fill_in "Location", with: @workprofile.location
    fill_in "Position name", with: @workprofile.position_name
    fill_in "Position title", with: @workprofile.position_title
    fill_in "Start date", with: @workprofile.start_date
    click_on "Create Workprofile"

    assert_text "Workprofile was successfully created"
    click_on "Back"
  end

  test "updating a Workprofile" do
    visit workprofiles_url
    click_on "Edit", match: :first

    fill_in "Company", with: @workprofile.company
    fill_in "End date", with: @workprofile.end_date
    fill_in "Experience type", with: @workprofile.experience_type
    fill_in "Industry", with: @workprofile.industry
    fill_in "Location", with: @workprofile.location
    fill_in "Position name", with: @workprofile.position_name
    fill_in "Position title", with: @workprofile.position_title
    fill_in "Start date", with: @workprofile.start_date
    click_on "Update Workprofile"

    assert_text "Workprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Workprofile" do
    visit workprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workprofile was successfully destroyed"
  end
end
