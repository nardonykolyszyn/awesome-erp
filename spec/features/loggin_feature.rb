require 'rails_helper'

describe 'Visit root page', js:true, type: :feature do
  it "Go to sign in page" do
    visit "http://localhost:3000"
    expect(page).to have_content 'Administrador'
  end
end


describe "Sign in successfully", js: true, type: :feature do
  it "Sign in successfully" do
    visit "http://localhost:3000"
    fill_in("Username", with: ENV['loggin_username'])
    fill_in("Password", with: ENV['loggin_password'])
    click_button("Log in")
    expect(page).to have_content ENV['loggin_username']
  end
end
