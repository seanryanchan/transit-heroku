require "application_system_test_case"

class TransitStopsTest < ApplicationSystemTestCase
  setup do
    @transit_stop = transit_stops(:one)
  end

  test "visiting the index" do
    visit transit_stops_url
    assert_selector "h1", text: "Transit Stops"
  end

  test "creating a Transit stop" do
    visit transit_stops_url
    click_on "New Transit Stop"

    fill_in "Latitude", with: @transit_stop.latitude
    fill_in "Longitude", with: @transit_stop.longitude
    fill_in "Name", with: @transit_stop.name
    fill_in "Status", with: @transit_stop.status
    fill_in "Type", with: @transit_stop.type
    click_on "Create Transit stop"

    assert_text "Transit stop was successfully created"
    click_on "Back"
  end

  test "updating a Transit stop" do
    visit transit_stops_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @transit_stop.latitude
    fill_in "Longitude", with: @transit_stop.longitude
    fill_in "Name", with: @transit_stop.name
    fill_in "Status", with: @transit_stop.status
    fill_in "Type", with: @transit_stop.type
    click_on "Update Transit stop"

    assert_text "Transit stop was successfully updated"
    click_on "Back"
  end

  test "destroying a Transit stop" do
    visit transit_stops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transit stop was successfully destroyed"
  end
end
