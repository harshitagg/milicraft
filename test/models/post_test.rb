require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(text: "some text")
    assert !post.save, "Saved the post without a title"
  end

  test "should not save post without text" do
    post = Post.new(title: "some title")
    assert !post.save, "Saved the post without a text"
  end
end
