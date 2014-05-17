require 'test_helper'

class ProbasControllerTest < ActionController::TestCase
  setup do
    @proba = probas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:probas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proba" do
    assert_difference('Proba.count') do
      post :create, proba: {  }
    end

    assert_redirected_to proba_path(assigns(:proba))
  end

  test "should show proba" do
    get :show, id: @proba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proba
    assert_response :success
  end

  test "should update proba" do
    patch :update, id: @proba, proba: {  }
    assert_redirected_to proba_path(assigns(:proba))
  end

  test "should destroy proba" do
    assert_difference('Proba.count', -1) do
      delete :destroy, id: @proba
    end

    assert_redirected_to probas_path
  end
end
