require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: {text: @post.text, title: @post.title}
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should create post with XML request" do
    assert_difference('Post.count') do
      post :create, Post.new(text: @post.text, title: @post.title).to_xml, :format => "xml"
    end

    assert_equal 201, response.status
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should show post in XML format" do
    get :show, :format => :xml, id: @post.id
    assert_response :success
    assert_equal @post.id, Hash.from_xml(response.body)['post']['id']
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: {text: @post.text, title: @post.title}
    assert_redirected_to post_path(assigns(:post))
  end

  test "should update post if request is XML" do
    put :update, Post.new(text: @post.text, title: @post.title).to_xml, :format => :xml, id: @post
    assert_equal 204, response.status
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end

  test "should destroy post if request is XML" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post, format: "xml"
    end

    assert_equal 204, response.status
  end
end
