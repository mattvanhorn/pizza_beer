Given(/^there are (\d+) guests expected$/) do |guest_count|
  Site.new_estimate_page.guests_expected = guest_count
end

Given(/^the guests are (full|hungry|starving)$/) do |hunger_level|
  Site.new_estimate_page.hunger_level = hunger_level
end

When 'I ask how much to order' do
  Site.new_estimate_page.request_estimate
end

Then(/^I will know I need to buy (\d+ pizza pies)$/) do |pie_count|
  expect(Site.new_estimate_page).to have_text("#{pie_count}")
end
