require 'test_helper'

class DynamitesControllerTest < ActionController::TestCase
  setup do
    @dynamite = dynamites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dynamites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dynamite" do
    assert_difference('Dynamite.count') do
      post :create, dynamite: { content: @dynamite.content }
    end

    assert_redirected_to dynamite_path(assigns(:dynamite))
  end

  test "should show dynamite" do
    get :show, id: @dynamite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dynamite
    assert_response :success
  end

  test "should update dynamite" do
    patch :update, id: @dynamite, dynamite: { content: @dynamite.content }
    assert_redirected_to dynamite_path(assigns(:dynamite))
  end

  test "should destroy dynamite" do
    assert_difference('Dynamite.count', -1) do
      delete :destroy, id: @dynamite
    end

    assert_redirected_to dynamites_path
  end
end
