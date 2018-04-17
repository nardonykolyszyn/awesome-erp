require 'rails_helper'

describe "Sign in successfully", js: true, type: :feature do
  it "Sign in successfully" do
  	user = FactoryGirl.build(:user)
   	login_as(user, :scope => :user)
   	visit new_article_path
   	fill_in({ id: 'article_name', with: 'Article Example'})
  	fill_in({id: 'article_price', with: 4000})
  	click_button("Save")
  end
end