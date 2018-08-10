require "application_system_test_case"

class OrdersNewsTest < ApplicationSystemTestCase
  setup do
    @orders_news = orders_news(:one)
  end

  test "visiting the index" do
    visit orders_news_url
    assert_selector "h1", text: "Orders News"
  end

  test "creating a Orders new" do
    visit orders_news_url
    click_on "New Orders New"

    fill_in "Client", with: @orders_news.client
    fill_in "Date", with: @orders_news.date
    fill_in "Hz", with: @orders_news.hz
    fill_in "Num", with: @orders_news.num
    click_on "Create Orders new"

    assert_text "Orders new was successfully created"
    click_on "Back"
  end

  test "updating a Orders new" do
    visit orders_news_url
    click_on "Edit", match: :first

    fill_in "Client", with: @orders_news.client
    fill_in "Date", with: @orders_news.date
    fill_in "Hz", with: @orders_news.hz
    fill_in "Num", with: @orders_news.num
    click_on "Update Orders new"

    assert_text "Orders new was successfully updated"
    click_on "Back"
  end

  test "destroying a Orders new" do
    visit orders_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orders new was successfully destroyed"
  end
end
