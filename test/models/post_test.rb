require 'test_helper'

class PostTest < ActiveSupport::TestCase
  describe Post do
    before do
      @post = Post.new(title: "Post 1", text: "some text")
    end

    subject { @post }

    it { should respond_to(:title) }
    it { should respond_to(:text) }

    it { should be_valid }

    describe "when title is not present" do
      before { @post.title = " " }
      it { should_not be_valid }
    end

    describe "when text is not present" do
      before { @post.text = " " }
      it { should_not be_valid }
    end
  end
end
