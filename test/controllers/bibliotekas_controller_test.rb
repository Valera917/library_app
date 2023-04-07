require "test_helper"

class BibliotekasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bibliotekas_new_url
    assert_response :success
  end

  test "should get edit" do
    get bibliotekas_edit_url
    assert_response :success
  end

  test "should get show" do
    get bibliotekas_show_url
    assert_response :success
  end

  test "should get index" do
    get bibliotekas_index_url
    assert_response :success
  end
end
