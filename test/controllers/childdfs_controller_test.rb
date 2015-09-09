require 'test_helper'

class ChilddfsControllerTest < ActionController::TestCase
  setup do
    @childdf = childdfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childdfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childdf" do
    assert_difference('Childdf.count') do
      post :create, childdf: { name: @childdf.name, parent_id: @childdf.parent_id }
    end

    assert_redirected_to childdf_path(assigns(:childdf))
  end

  test "should show childdf" do
    get :show, id: @childdf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childdf
    assert_response :success
  end

  test "should update childdf" do
    patch :update, id: @childdf, childdf: { name: @childdf.name, parent_id: @childdf.parent_id }
    assert_redirected_to childdf_path(assigns(:childdf))
  end

  test "should destroy childdf" do
    assert_difference('Childdf.count', -1) do
      delete :destroy, id: @childdf
    end

    assert_redirected_to childdfs_path
  end
end
