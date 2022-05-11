require "application_system_test_case"

class PethistoriesTest < ApplicationSystemTestCase
  setup do
    @pethistory = pethistories(:one)
  end

  test "visiting the index" do
    visit pethistories_url
    assert_selector "h1", text: "Pethistories"
  end

  test "should create pethistory" do
    visit pethistories_url
    click_on "New pethistory"

    fill_in "Diagnostic", with: @pethistory.diagnostic
    fill_in "Height", with: @pethistory.height
    fill_in "Weight", with: @pethistory.weight
    click_on "Create Pethistory"

    assert_text "Pethistory was successfully created"
    click_on "Back"
  end

  test "should update Pethistory" do
    visit pethistory_url(@pethistory)
    click_on "Edit this pethistory", match: :first

    fill_in "Diagnostic", with: @pethistory.diagnostic
    fill_in "Height", with: @pethistory.height
    fill_in "Weight", with: @pethistory.weight
    click_on "Update Pethistory"

    assert_text "Pethistory was successfully updated"
    click_on "Back"
  end

  test "should destroy Pethistory" do
    visit pethistory_url(@pethistory)
    click_on "Destroy this pethistory", match: :first

    assert_text "Pethistory was successfully destroyed"
  end
end
