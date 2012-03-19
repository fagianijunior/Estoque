require 'test_helper'

class MaterialStorageLocationsControllerTest < ActionController::TestCase
  setup do
    @material_storage_location = material_storage_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_storage_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_storage_location" do
    assert_difference('MaterialStorageLocation.count') do
      post :create, material_storage_location: @material_storage_location.attributes
    end

    assert_redirected_to material_storage_location_path(assigns(:material_storage_location))
  end

  test "should show material_storage_location" do
    get :show, id: @material_storage_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_storage_location
    assert_response :success
  end

  test "should update material_storage_location" do
    put :update, id: @material_storage_location, material_storage_location: @material_storage_location.attributes
    assert_redirected_to material_storage_location_path(assigns(:material_storage_location))
  end

  test "should destroy material_storage_location" do
    assert_difference('MaterialStorageLocation.count', -1) do
      delete :destroy, id: @material_storage_location
    end

    assert_redirected_to material_storage_locations_path
  end
end
