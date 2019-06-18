require 'test_helper'

class RecepiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recepy = recepies(:one)
  end

  test "should get index" do
    get recepies_url
    assert_response :success
  end

  test "should get new" do
    get new_recepy_url
    assert_response :success
  end

  test "should create recepy" do
    assert_difference('Recepy.count') do
      post recepies_url, params: { recepy: { Description: @recepy.Description, Title: @recepy.Title } }
    end

    assert_redirected_to recepy_url(Recepy.last)
  end

  test "should show recepy" do
    get recepy_url(@recepy)
    assert_response :success
  end

  test "should get edit" do
    get edit_recepy_url(@recepy)
    assert_response :success
  end

  test "should update recepy" do
    patch recepy_url(@recepy), params: { recepy: { Description: @recepy.Description, Title: @recepy.Title } }
    assert_redirected_to recepy_url(@recepy)
  end

  test "should destroy recepy" do
    assert_difference('Recepy.count', -1) do
      delete recepy_url(@recepy)
    end

    assert_redirected_to recepies_url
  end
end
