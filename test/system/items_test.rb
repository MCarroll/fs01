require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Account", with: @item.account_id
    fill_in "Bulk", with: @item.bulk
    fill_in "Bulk description", with: @item.bulk_description
    fill_in "Bulk qty", with: @item.bulk_qty
    fill_in "Height", with: @item.height
    fill_in "Item", with: @item.item_id
    fill_in "Name", with: @item.name
    fill_in "Price", with: @item.price
    fill_in "Short name", with: @item.short_name
    fill_in "Sku", with: @item.sku
    fill_in "Weight lbs", with: @item.weight_lbs
    fill_in "Width", with: @item.width
    click_on "Create Item"

    assert_text "Item was successfully created"
    assert_selector "h1", text: "Items"
  end

  test "updating a Item" do
    visit item_url(@item)
    click_on "Edit", match: :first

    fill_in "Account", with: @item.account_id
    fill_in "Bulk", with: @item.bulk
    fill_in "Bulk description", with: @item.bulk_description
    fill_in "Bulk qty", with: @item.bulk_qty
    fill_in "Height", with: @item.height
    fill_in "Item", with: @item.item_id
    fill_in "Name", with: @item.name
    fill_in "Price", with: @item.price
    fill_in "Short name", with: @item.short_name
    fill_in "Sku", with: @item.sku
    fill_in "Weight lbs", with: @item.weight_lbs
    fill_in "Width", with: @item.width
    click_on "Update Item"

    assert_text "Item was successfully updated"
    assert_selector "h1", text: "Items"
  end

  test "destroying a Item" do
    visit edit_item_url(@item)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Item was successfully destroyed"
  end
end
