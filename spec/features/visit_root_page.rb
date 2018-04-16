require_relative '../rails_helper.rb'

feature "Visit root page" do
  visit "/"
  expect(page).to have_content('Administrator')

end
