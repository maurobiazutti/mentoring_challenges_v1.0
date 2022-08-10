require "application_system_test_case"

class MountingsTest < ApplicationSystemTestCase
  setup do
    @mounting = mountings(:one)
  end

  test "visiting the index" do
    visit mountings_url
    assert_selector "h1", text: "Mountings"
  end

  test "should create mounting" do
    visit mountings_url
    click_on "New mounting"

    fill_in "Book", with: @mounting.book_id
    fill_in "Part", with: @mounting.part_id
    click_on "Create Mounting"

    assert_text "Mounting was successfully created"
    click_on "Back"
  end

  test "should update Mounting" do
    visit mounting_url(@mounting)
    click_on "Edit this mounting", match: :first

    fill_in "Book", with: @mounting.book_id
    fill_in "Part", with: @mounting.part_id
    click_on "Update Mounting"

    assert_text "Mounting was successfully updated"
    click_on "Back"
  end

  test "should destroy Mounting" do
    visit mounting_url(@mounting)
    click_on "Destroy this mounting", match: :first

    assert_text "Mounting was successfully destroyed"
  end
end
