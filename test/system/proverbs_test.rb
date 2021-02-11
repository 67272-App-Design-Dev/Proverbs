require "application_system_test_case"

class ProverbsTest < ApplicationSystemTestCase
  setup do
    @proverb = proverbs(:one)
  end

  test "visiting the index" do
    visit proverbs_url
    assert_selector "h1", text: "Proverbs"
  end

  test "creating a Proverb" do
    visit proverbs_url
    click_on "New Proverb"

    check "Active" if @proverb.active
    fill_in "Klingon", with: @proverb.klingon
    fill_in "Translation", with: @proverb.translation
    click_on "Create Proverb"

    assert_text "Proverb was successfully created"
    click_on "Back"
  end

  test "updating a Proverb" do
    visit proverbs_url
    click_on "Edit", match: :first

    check "Active" if @proverb.active
    fill_in "Klingon", with: @proverb.klingon
    fill_in "Translation", with: @proverb.translation
    click_on "Update Proverb"

    assert_text "Proverb was successfully updated"
    click_on "Back"
  end

  test "destroying a Proverb" do
    visit proverbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proverb was successfully destroyed"
  end
end
