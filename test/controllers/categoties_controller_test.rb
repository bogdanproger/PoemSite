require "test_helper"

class CategotiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoty = categoties(:one)
  end

  test "should get index" do
    get categoties_url
    assert_response :success
  end

  test "should get new" do
    get new_categoty_url
    assert_response :success
  end

  test "should create categoty" do
    assert_difference('Categoty.count') do
      post categoties_url, params: { categoty: { category: @categoty.category } }
    end

    assert_redirected_to categoty_url(Categoty.last)
  end

  test "should show categoty" do
    get categoty_url(@categoty)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoty_url(@categoty)
    assert_response :success
  end

  test "should update categoty" do
    patch categoty_url(@categoty), params: { categoty: { category: @categoty.category } }
    assert_redirected_to categoty_url(@categoty)
  end

  test "should destroy categoty" do
    assert_difference('Categoty.count', -1) do
      delete categoty_url(@categoty)
    end

    assert_redirected_to categoties_url
  end
end
