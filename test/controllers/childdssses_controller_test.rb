require 'test_helper'

class ChilddsssesControllerTest < ActionController::TestCase
  setup do
    @childdsss = childdssses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childdssses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childdsss" do
    assert_difference('Childdsss.count') do
      post :create, childdsss: { childdf_id: @childdsss.childdf_id }
    end

    assert_redirected_to childdsss_path(assigns(:childdsss))
  end

  test "should show childdsss" do
    get :show, id: @childdsss
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childdsss
    assert_response :success
  end

  test "should update childdsss" do
    patch :update, id: @childdsss, childdsss: { childdf_id: @childdsss.childdf_id }
    assert_redirected_to childdsss_path(assigns(:childdsss))
  end

  test "should destroy childdsss" do
    assert_difference('Childdsss.count', -1) do
      delete :destroy, id: @childdsss
    end

    assert_redirected_to childdssses_path
  end
end
