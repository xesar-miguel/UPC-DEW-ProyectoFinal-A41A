require 'test_helper'

class LocalsControllerTest < ActionController::TestCase
  setup do
    @local = locals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local" do
    assert_difference('Local.count') do
      post :create, local: { id_local: @local.id_local, saddress: @local.saddress, saddressgooglemap: @local.saddressgooglemap, sdistrict: @local.sdistrict, sname: @local.sname, sphone: @local.sphone }
    end

    assert_redirected_to local_path(assigns(:local))
  end

  test "should show local" do
    get :show, id: @local
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local
    assert_response :success
  end

  test "should update local" do
    put :update, id: @local, local: { id_local: @local.id_local, saddress: @local.saddress, saddressgooglemap: @local.saddressgooglemap, sdistrict: @local.sdistrict, sname: @local.sname, sphone: @local.sphone }
    assert_redirected_to local_path(assigns(:local))
  end

  test "should destroy local" do
    assert_difference('Local.count', -1) do
      delete :destroy, id: @local
    end

    assert_redirected_to locals_path
  end
end
