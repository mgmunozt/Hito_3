require "application_system_test_case"

class LogisticsTest < ApplicationSystemTestCase
  setup do
    @logistic = logistics(:one)
  end

  test "visiting the index" do
    visit logistics_url
    assert_selector "h1", text: "Logistics"
  end

  test "should create logistic" do
    visit logistics_url
    click_on "New logistic"

    fill_in "Activity", with: @logistic.Activity
    fill_in "Date", with: @logistic.date
    fill_in "Crew", with: @logistic.crew
    fill_in "Activity type", with: @logistic.activity_type
    click_on "Create Logistic"

    assert_text "Logistic was successfully created"
    click_on "Back"
  end

  test "should update Logistic" do
    visit logistic_url(@logistic)
    click_on "Edit this logistic", match: :first

    fill_in "Activity", with: @logistic.Activity
    fill_in "Date", with: @logistic.date
    fill_in "Crew", with: @logistic.crew
    fill_in "Activity type", with: @logistic.activity_type
    click_on "Update Logistic"

    assert_text "Logistic was successfully updated"
    click_on "Back"
  end

  test "should destroy Logistic" do
    visit logistic_url(@logistic)
    click_on "Destroy this logistic", match: :first

    assert_text "Logistic was successfully destroyed"
  end
end
