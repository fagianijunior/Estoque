require 'test_helper'

class HandlingItemsControllerTest < ActionController::TestCase
  setup do
    @handling_item = handling_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handling_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handling_item" do
    assert_difference('HandlingItem.count') do
      post :create, handling_item: @handling_item.attributes
    end

    assert_redirected_to handling_item_path(assigns(:handling_item))
  end

  test "should show handling_item" do
    get :show, id: @handling_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handling_item
    assert_response :success
  end

  test "should update handling_item" do
    put :update, id: @handling_item, handling_item: @handling_item.attributes
    assert_redirected_to handling_item_path(assigns(:handling_item))
  end

  test "should destroy handling_item" do
    assert_difference('HandlingItem.count', -1) do
      delete :destroy, id: @handling_item
    end

    assert_redirected_to handling_items_path
  end
end
