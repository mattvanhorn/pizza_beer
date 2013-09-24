Given(/^there are (\d+) guests expected$/) do |guest_count|
  Site.new_estimate_page.guests_expected = guest_count
end

Given(/^the guests are (full|hungry|starving)$/) do |hunger_level|
  Site.new_estimate_page.hunger_level = hunger_level
end

Given(/^the guests (like|love) beer$/) do |thirst|
  Site.new_estimate_page.thirst_level = thirst
end

Given(/^the guests are underage$/) do
  Site.new_estimate_page.thirst_level = 'none'
end

When 'I ask how much to order' do
  Site.new_estimate_page.request_estimate
end

Then(/^I will know I need to buy (\d+ pizza pies)$/) do |pie_count|
  expect(Site.new_estimate_page).to have_text("#{pie_count}")
end

Then(/^I will know I need to buy ((?:\d+ cases?)?(?: and )?(?:\d+ six\-packs?)? of beer)$/) do |content|
  expect(Site.new_estimate_page).to have_text(content)
end

Then(/^I will know I don't need to buy beer$/) do
  expect(Site.new_estimate_page).to have_text("no beer")
end
