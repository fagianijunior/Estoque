require 'test_helper'

class MaterialHandlingItemsControllerTest < ActionController::TestCase
  setup do
    @material_handling_Item = material_handling_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_handling_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_handling_Item" do
    assert_difference('MaterialHandlingItem.count') do
      post :create, material_handling_Item: @material_handling_Item.attributes
    end

    assert_redirected_to material_handling_Item_path(assigns(:material_handling_Item))
  end

  test "should show material_handling_Item" do
    get :show, id: @material_handling_Item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_handling_Item
    assert_response :success
  end

  test "should update material_handling_Item" do
    put :update, id: @material_handling_Item, material_handling_Item: @material_handling_Item.attributes
    assert_redirected_to material_handling_Item_path(assigns(:material_handling_Item))
  end

  test "should destroy material_handling_Item" do
    assert_difference('MaterialHandlingItem.count', -1) do
      delete :destroy, id: @material_handling_Item
    end

    assert_redirected_to material_handling_items_path
  end
end
