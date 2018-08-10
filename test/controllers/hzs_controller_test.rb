require 'test_helper'

class HzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hz = hzs(:one)
  end

  test "should get index" do
    get hzs_url
    assert_response :success
  end

  test "should get new" do
    get new_hz_url
    assert_response :success
  end

  test "should create hz" do
    assert_difference('Hz.count') do
      post hzs_url, params: { hz: { client: @hz.client, date: @hz.date, hz: @hz.hz, name: @hz.name, num: @hz.num } }
    end

    assert_redirected_to hz_url(Hz.last)
  end

  test "should show hz" do
    get hz_url(@hz)
    assert_response :success
  end

  test "should get edit" do
    get edit_hz_url(@hz)
    assert_response :success
  end

  test "should update hz" do
    patch hz_url(@hz), params: { hz: { client: @hz.client, date: @hz.date, hz: @hz.hz, name: @hz.name, num: @hz.num } }
    assert_redirected_to hz_url(@hz)
  end

  test "should destroy hz" do
    assert_difference('Hz.count', -1) do
      delete hz_url(@hz)
    end

    assert_redirected_to hzs_url
  end
end
