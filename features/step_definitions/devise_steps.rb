When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the administrador message$/) do
  expect(page).to have_content("Administrador")
end
