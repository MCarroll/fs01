require "test_helper"

class WeightunitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weightunit = weightunits(:one)
  end

  test "should get index" do
    get weightunits_url
    assert_response :success
  end

  test "should get new" do
    get new_weightunit_url
    assert_response :success
  end

  test "should create weightunit" do
    assert_difference('Weightunit.count') do
      post weightunits_url, params: { weightunit: { unit: @weightunit.unit } }
    end

    assert_redirected_to weightunit_url(Weightunit.last)
  end

  test "should show weightunit" do
    get weightunit_url(@weightunit)
    assert_response :success
  end

  test "should get edit" do
    get edit_weightunit_url(@weightunit)
    assert_response :success
  end

  test "should update weightunit" do
    patch weightunit_url(@weightunit), params: { weightunit: { unit: @weightunit.unit } }
    assert_redirected_to weightunit_url(@weightunit)
  end

  test "should destroy weightunit" do
    assert_difference('Weightunit.count', -1) do
      delete weightunit_url(@weightunit)
    end

    assert_redirected_to weightunits_url
  end
end
