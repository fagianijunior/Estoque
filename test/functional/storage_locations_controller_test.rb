require 'test_helper'

class StorageLocationsControllerTest < ActionController::TestCase
  setup do
    @storage_location = storage_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storage_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storage_location" do
    assert_difference('StorageLocation.count') do
      post :create, storage_location: @storage_location.attributes
    end

    assert_redirected_to storage_location_path(assigns(:storage_location))
  end

  test "should show storage_location" do
    get :show, id: @storage_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storage_location
    assert_response :success
  end

  test "should update storage_location" do
    put :update, id: @storage_location, storage_location: @storage_location.attributes
    assert_redirected_to storage_location_path(assigns(:storage_location))
  end

  test "should destroy storage_location" do
    assert_difference('StorageLocation.count', -1) do
      delete :destroy, id: @storage_location
    end

    assert_redirected_to storage_locations_path
  end
end
