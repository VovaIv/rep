require "application_system_test_case"

class HzsTest < ApplicationSystemTestCase
  setup do
    @hz = hzs(:one)
  end

  test "visiting the index" do
    visit hzs_url
    assert_selector "h1", text: "Hzs"
  end

  test "creating a Hz" do
    visit hzs_url
    click_on "New Hz"

    fill_in "Client", with: @hz.client
    fill_in "Date", with: @hz.date
    fill_in "Hz", with: @hz.hz
    fill_in "Name", with: @hz.name
    fill_in "Num", with: @hz.num
    click_on "Create Hz"

    assert_text "Hz was successfully created"
    click_on "Back"
  end

  test "updating a Hz" do
    visit hzs_url
    click_on "Edit", match: :first

    fill_in "Client", with: @hz.client
    fill_in "Date", with: @hz.date
    fill_in "Hz", with: @hz.hz
    fill_in "Name", with: @hz.name
    fill_in "Num", with: @hz.num
    click_on "Update Hz"

    assert_text "Hz was successfully updated"
    click_on "Back"
  end

  test "destroying a Hz" do
    visit hzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hz was successfully destroyed"
  end
end
