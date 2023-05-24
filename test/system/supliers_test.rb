require "application_system_test_case"

class SupliersTest < ApplicationSystemTestCase
  setup do
    @suplier = supliers(:one)
  end

  test "visiting the index" do
    visit supliers_url
    assert_selector "h1", text: "Supliers"
  end

  test "should create suplier" do
    visit supliers_url
    click_on "New suplier"

    fill_in "Name", with: @suplier.name
    click_on "Create Suplier"

    assert_text "Suplier was successfully created"
    click_on "Back"
  end

  test "should update Suplier" do
    visit suplier_url(@suplier)
    click_on "Edit this suplier", match: :first

    fill_in "Name", with: @suplier.name
    click_on "Update Suplier"

    assert_text "Suplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Suplier" do
    visit suplier_url(@suplier)
    click_on "Destroy this suplier", match: :first

    assert_text "Suplier was successfully destroyed"
  end
end
