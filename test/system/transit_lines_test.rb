require "application_system_test_case"

class TransitLinesTest < ApplicationSystemTestCase
  setup do
    @transit_line = transit_lines(:one)
  end

  test "visiting the index" do
    visit transit_lines_url
    assert_selector "h1", text: "Transit Lines"
  end

  test "creating a Transit line" do
    visit transit_lines_url
    click_on "New Transit Line"

    fill_in "Avg price", with: @transit_line.avg_price
    fill_in "Name", with: @transit_line.name
    fill_in "Operating hours", with: @transit_line.operating_hours
    fill_in "Reliability", with: @transit_line.reliability
    fill_in "Restrictions", with: @transit_line.restrictions
    fill_in "Status", with: @transit_line.status
    fill_in "Type", with: @transit_line.type
    click_on "Create Transit line"

    assert_text "Transit line was successfully created"
    click_on "Back"
  end

  test "updating a Transit line" do
    visit transit_lines_url
    click_on "Edit", match: :first

    fill_in "Avg price", with: @transit_line.avg_price
    fill_in "Name", with: @transit_line.name
    fill_in "Operating hours", with: @transit_line.operating_hours
    fill_in "Reliability", with: @transit_line.reliability
    fill_in "Restrictions", with: @transit_line.restrictions
    fill_in "Status", with: @transit_line.status
    fill_in "Type", with: @transit_line.type
    click_on "Update Transit line"

    assert_text "Transit line was successfully updated"
    click_on "Back"
  end

  test "destroying a Transit line" do
    visit transit_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transit line was successfully destroyed"
  end
end
