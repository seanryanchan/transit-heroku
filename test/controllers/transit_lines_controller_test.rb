require 'test_helper'

class TransitLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transit_line = transit_lines(:one)
  end

  test "should get index" do
    get transit_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_transit_line_url
    assert_response :success
  end

  test "should create transit_line" do
    assert_difference('TransitLine.count') do
      post transit_lines_url, params: { transit_line: { avg_price: @transit_line.avg_price, name: @transit_line.name, operating_hours: @transit_line.operating_hours, reliability: @transit_line.reliability, restrictions: @transit_line.restrictions, status: @transit_line.status, type: @transit_line.type } }
    end

    assert_redirected_to transit_line_url(TransitLine.last)
  end

  test "should show transit_line" do
    get transit_line_url(@transit_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_transit_line_url(@transit_line)
    assert_response :success
  end

  test "should update transit_line" do
    patch transit_line_url(@transit_line), params: { transit_line: { avg_price: @transit_line.avg_price, name: @transit_line.name, operating_hours: @transit_line.operating_hours, reliability: @transit_line.reliability, restrictions: @transit_line.restrictions, status: @transit_line.status, type: @transit_line.type } }
    assert_redirected_to transit_line_url(@transit_line)
  end

  test "should destroy transit_line" do
    assert_difference('TransitLine.count', -1) do
      delete transit_line_url(@transit_line)
    end

    assert_redirected_to transit_lines_url
  end
end
