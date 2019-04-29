require 'test_helper'

class MicropopstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropopst = micropopsts(:one)
  end

  test "should get index" do
    get micropopsts_url
    assert_response :success
  end

  test "should get new" do
    get new_micropopst_url
    assert_response :success
  end

  test "should create micropopst" do
    assert_difference('Micropopst.count') do
      post micropopsts_url, params: { micropopst: { content: @micropopst.content, user_id: @micropopst.user_id } }
    end

    assert_redirected_to micropopst_url(Micropopst.last)
  end

  test "should show micropopst" do
    get micropopst_url(@micropopst)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropopst_url(@micropopst)
    assert_response :success
  end

  test "should update micropopst" do
    patch micropopst_url(@micropopst), params: { micropopst: { content: @micropopst.content, user_id: @micropopst.user_id } }
    assert_redirected_to micropopst_url(@micropopst)
  end

  test "should destroy micropopst" do
    assert_difference('Micropopst.count', -1) do
      delete micropopst_url(@micropopst)
    end

    assert_redirected_to micropopsts_url
  end
end
