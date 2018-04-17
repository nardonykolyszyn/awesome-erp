require 'rails_helper'
describe 'Using pry binding to Capybara', js: true, type: :feature do
  it "loads capybara into pry session" do
    require "pry"
    binding.pry
  end
end

