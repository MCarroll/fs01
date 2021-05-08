require "application_system_test_case"

class WeightunitsTest < ApplicationSystemTestCase
  setup do
    @weightunit = weightunits(:one)
  end

  test "visiting the index" do
    visit weightunits_url
    assert_selector "h1", text: "Weightunits"
  end

  test "creating a Weightunit" do
    visit weightunits_url
    click_on "New Weightunit"

    fill_in "Unit", with: @weightunit.unit
    click_on "Create Weightunit"

    assert_text "Weightunit was successfully created"
    assert_selector "h1", text: "Weightunits"
  end

  test "updating a Weightunit" do
    visit weightunit_url(@weightunit)
    click_on "Edit", match: :first

    fill_in "Unit", with: @weightunit.unit
    click_on "Update Weightunit"

    assert_text "Weightunit was successfully updated"
    assert_selector "h1", text: "Weightunits"
  end

  test "destroying a Weightunit" do
    visit edit_weightunit_url(@weightunit)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Weightunit was successfully destroyed"
  end
end
