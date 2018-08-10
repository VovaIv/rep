require 'test_helper'

class OrderForcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order__force = order__forces(:one)
  end

  test "should get index" do
    get order__forces_url
    assert_response :success
  end

  test "should get new" do
    get new_order__force_url
    assert_response :success
  end

  test "should create order__force" do
    assert_difference('OrderForce.count') do
      post order__forces_url, params: { order__force: { client: @order__force.client, date: @order__force.date, hz: @order__force.hz, name: @order__force.name, num: @order__force.num } }
    end

    assert_redirected_to order__force_url(OrderForce.last)
  end

  test "should show order__force" do
    get order__force_url(@order__force)
    assert_response :success
  end

  test "should get edit" do
    get edit_order__force_url(@order__force)
    assert_response :success
  end

  test "should update order__force" do
    patch order__force_url(@order__force), params: { order__force: { client: @order__force.client, date: @order__force.date, hz: @order__force.hz, name: @order__force.name, num: @order__force.num } }
    assert_redirected_to order__force_url(@order__force)
  end

  test "should destroy order__force" do
    assert_difference('OrderForce.count', -1) do
      delete order__force_url(@order__force)
    end

    assert_redirected_to order__forces_url
  end
end
