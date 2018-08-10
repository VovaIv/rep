require 'test_helper'

class OrdersNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orders_news = orders_news(:one)
  end

  test "should get index" do
    get orders_news_url
    assert_response :success
  end

  test "should get new" do
    get new_orders_news_url
    assert_response :success
  end

  test "should create orders_news" do
    assert_difference('OrdersNew.count') do
      post orders_news_url, params: { orders_news: { client: @orders_news.client, date: @orders_news.date, hz: @orders_news.hz, num: @orders_news.num } }
    end

    assert_redirected_to orders_news_url(OrdersNew.last)
  end

  test "should show orders_news" do
    get orders_news_url(@orders_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_orders_news_url(@orders_news)
    assert_response :success
  end

  test "should update orders_news" do
    patch orders_news_url(@orders_news), params: { orders_news: { client: @orders_news.client, date: @orders_news.date, hz: @orders_news.hz, num: @orders_news.num } }
    assert_redirected_to orders_news_url(@orders_news)
  end

  test "should destroy orders_news" do
    assert_difference('OrdersNew.count', -1) do
      delete orders_news_url(@orders_news)
    end

    assert_redirected_to orders_news_url
  end
end
