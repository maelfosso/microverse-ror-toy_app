require "application_system_test_case"

class MicropopstsTest < ApplicationSystemTestCase
  setup do
    @micropopst = micropopsts(:one)
  end

  test "visiting the index" do
    visit micropopsts_url
    assert_selector "h1", text: "Micropopsts"
  end

  test "creating a Micropopst" do
    visit micropopsts_url
    click_on "New Micropopst"

    fill_in "Content", with: @micropopst.content
    fill_in "User", with: @micropopst.user_id
    click_on "Create Micropopst"

    assert_text "Micropopst was successfully created"
    click_on "Back"
  end

  test "updating a Micropopst" do
    visit micropopsts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @micropopst.content
    fill_in "User", with: @micropopst.user_id
    click_on "Update Micropopst"

    assert_text "Micropopst was successfully updated"
    click_on "Back"
  end

  test "destroying a Micropopst" do
    visit micropopsts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micropopst was successfully destroyed"
  end
end
