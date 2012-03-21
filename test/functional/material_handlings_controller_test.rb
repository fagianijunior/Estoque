require 'test_helper'

class MaterialHandlingsControllerTest < ActionController::TestCase
  setup do
    @material_handling = material_handlings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_handlings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_handling" do
    assert_difference('MaterialHandling.count') do
      post :create, material_handling: @material_handling.attributes
    end

    assert_redirected_to material_handling_path(assigns(:material_handling))
  end

  test "should show material_handling" do
    get :show, id: @material_handling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_handling
    assert_response :success
  end

  test "should update material_handling" do
    put :update, id: @material_handling, material_handling: @material_handling.attributes
    assert_redirected_to material_handling_path(assigns(:material_handling))
  end

  test "should destroy material_handling" do
    assert_difference('MaterialHandling.count', -1) do
      delete :destroy, id: @material_handling
    end

    assert_redirected_to material_handlings_path
  end
end
