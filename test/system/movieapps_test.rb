require "application_system_test_case"

class MovieappsTest < ApplicationSystemTestCase
  setup do
    @movieapp = movieapps(:one)
  end

  test "visiting the index" do
    visit movieapps_url
    assert_selector "h1", text: "Movieapps"
  end

  test "creating a Movieapp" do
    visit movieapps_url
    click_on "New Movieapp"

    fill_in "Attachment", with: @movieapp.attachment
    fill_in "Category", with: @movieapp.category
    fill_in "Price", with: @movieapp.price
    fill_in "Title", with: @movieapp.title
    fill_in "Year", with: @movieapp.year
    click_on "Create Movieapp"

    assert_text "Movieapp was successfully created"
    click_on "Back"
  end

  test "updating a Movieapp" do
    visit movieapps_url
    click_on "Edit", match: :first

    fill_in "Attachment", with: @movieapp.attachment
    fill_in "Category", with: @movieapp.category
    fill_in "Price", with: @movieapp.price
    fill_in "Title", with: @movieapp.title
    fill_in "Year", with: @movieapp.year
    click_on "Update Movieapp"

    assert_text "Movieapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Movieapp" do
    visit movieapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movieapp was successfully destroyed"
  end
end
