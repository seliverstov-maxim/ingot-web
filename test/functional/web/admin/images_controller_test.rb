require 'test_helper'

class Web::Admin::PagesControllerTest < ActionController::TestCase
  setup do
    
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page" do
    post :create, page: @attrs
    assert_response :redirect

    page = Page.find_by_slug(@attrs[:slug])
    assert page

    contents_count = page.contents.count
    need_contents_count = configus.locales.count * configus.languages.count
    assert contents_count == need_contents_count , "Page contents count- #{contents_count}, but must be #{need_contents_count}"
  end

  test "should get edit" do
    get :edit, id: @page.id
    assert_response :success
  end

  test "should update page" do
    post :update, id: @page.id, page: @attrs
    assert_response :redirect

    assert Page.find_by_slug(@attrs[:slug])
  end

  test "should destroy page" do
    delete :destroy, id: @page.id
    assert_response :redirect

    assert_nil Page.find_by_id(@page)
  end

end