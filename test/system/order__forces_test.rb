require "application_system_test_case"

class OrderForcesTest < ApplicationSystemTestCase
  setup do
    @order__force = order__forces(:one)
  end

  test "visiting the index" do
    visit order__forces_url
    assert_selector "h1", text: "Order Forces"
  end

  test "creating a Order  force" do
    visit order__forces_url
    click_on "New Order Force"

    fill_in "Client", with: @order__force.client
    fill_in "Date", with: @order__force.date
    fill_in "Hz", with: @order__force.hz
    fill_in "Name", with: @order__force.name
    fill_in "Num", with: @order__force.num
    click_on "Create Order  force"

    assert_text "Order  force was successfully created"
    click_on "Back"
  end

  test "updating a Order  force" do
    visit order__forces_url
    click_on "Edit", match: :first

    fill_in "Client", with: @order__force.client
    fill_in "Date", with: @order__force.date
    fill_in "Hz", with: @order__force.hz
    fill_in "Name", with: @order__force.name
    fill_in "Num", with: @order__force.num
    click_on "Update Order  force"

    assert_text "Order  force was successfully updated"
    click_on "Back"
  end

  test "destroying a Order  force" do
    visit order__forces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order  force was successfully destroyed"
  end
end
