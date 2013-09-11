require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    test "should not save comment when email is not present" do
      comment = Comment.new(body: "some body")
      assert !comment.save, "Saved the comment without email"
    end

    test "should not save comment when body is not present" do
      comment = Comment.new(email: "some email")
      assert !comment.save, "Saved the comment without body"
    end
end
