require "application_system_test_case"

class RecepiesTest < ApplicationSystemTestCase
  setup do
    @recepy = recepies(:one)
  end

  test "visiting the index" do
    visit recepies_url
    assert_selector "h1", text: "Recepies"
  end

  test "creating a Recepy" do
    visit recepies_url
    click_on "New Recepy"

    fill_in "Description", with: @recepy.Description
    fill_in "Title", with: @recepy.Title
    click_on "Create Recepy"

    assert_text "Recepy was successfully created"
    click_on "Back"
  end

  test "updating a Recepy" do
    visit recepies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @recepy.Description
    fill_in "Title", with: @recepy.Title
    click_on "Update Recepy"

    assert_text "Recepy was successfully updated"
    click_on "Back"
  end

  test "destroying a Recepy" do
    visit recepies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recepy was successfully destroyed"
  end
end
