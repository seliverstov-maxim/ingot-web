require 'test_helper'

class Web::Admin::ImagesControllerTest < ActionController::TestCase
  setup do
    @image = create :image
    @attrs = attributes_for :image
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    post :create, image: @attrs
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, id: @image.id
    assert_response :success
  end

  test "should update image" do
    post :update, id: @image.id, image: @attrs
    assert_response :redirect

    assert Image.find_by_name(@attrs[:name])
  end

  test "should destroy image" do
    delete :destroy, id: @image.id
    assert_response :redirect

    assert_nil Image.find_by_id(@image)
  end
end