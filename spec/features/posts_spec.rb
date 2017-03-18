require 'rails_helper'

describe 'Posts', type: 'feature' do

  describe 'show' do
    before do
      @category = Category.create(name: "Cool")
      @post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
      @post.categories << @category
      @user = User.create(username: 'RealBigFish')
      @comment1 = Comment.create(content: "This was great!", user: @user, post: @post)
    end

    it 'should display the title' do
      visit post_path(@post)
      expect(page).to have_content(@post.title)
    end

    it 'should display the content' do
      visit post_path(@post)
      expect(page).to have_content(@post.content)
    end

    it 'should display all of the comments for that post' do
      visit post_path(@post)
      expect(page).to have_content(@comment1.content)
    end
  end
end
