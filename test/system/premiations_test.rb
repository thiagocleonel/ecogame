require "application_system_test_case"

class PremiationsTest < ApplicationSystemTestCase
  setup do
    @premiation = premiations(:one)
  end

  test "visiting the index" do
    visit premiations_url
    assert_selector "h1", text: "Premiations"
  end

  test "creating a Premiation" do
    visit premiations_url
    click_on "New Premiation"

    fill_in "Badge", with: @premiation.badge_id
    fill_in "Citizen", with: @premiation.citizen_id
    click_on "Create Premiation"

    assert_text "Premiation was successfully created"
    click_on "Back"
  end

  test "updating a Premiation" do
    visit premiations_url
    click_on "Edit", match: :first

    fill_in "Badge", with: @premiation.badge_id
    fill_in "Citizen", with: @premiation.citizen_id
    click_on "Update Premiation"

    assert_text "Premiation was successfully updated"
    click_on "Back"
  end

  test "destroying a Premiation" do
    visit premiations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Premiation was successfully destroyed"
  end
end
