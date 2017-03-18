require 'rails_helper'

describe 'comments', type: 'feature' do

  before do
    @category = Category.create(name: "Cool")
    @post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
    @user = User.create(username: 'RealBigFish')
    visit post_path(@post)
  end

  it 'creates a comment with an existing user' do
    fill_in('comment_content', with: 'great post!')
    select(@user.username, from: 'comment_user_id')
    click_button('Create Comment')
    expect(page).to have_content("#{@user.username} says: great post!")
  end

end
