require 'test_helper'

class ObjsControllerTest < ActionController::TestCase
  setup do
    @obj = objs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obj" do
    assert_difference('Obj.count') do
      post :create, obj: { app_id: @obj.app_id, name: @obj.name }
    end

    assert_redirected_to obj_path(assigns(:obj))
  end

  test "should show obj" do
    get :show, id: @obj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obj
    assert_response :success
  end

  test "should update obj" do
    patch :update, id: @obj, obj: { app_id: @obj.app_id, name: @obj.name }
    assert_redirected_to obj_path(assigns(:obj))
  end

  test "should destroy obj" do
    assert_difference('Obj.count', -1) do
      delete :destroy, id: @obj
    end

    assert_redirected_to objs_path
  end
end
