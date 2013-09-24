Transform /(\d+)/ do |num|
  num.to_i
end

Given /^there are (\d+) guests expected$/ do |guest_count|
  guest_count.times{ Fabricate(:guest) }
end

Given /^the guests are (full|hungry|starving)$/ do |hunger|
  general_hunger_level hunger
end

Given /^the guests (like|love) beer$/ do |thirst|
  general_thirst_level thirst
end

Given /^the guests are underage$/ do
  general_thirst_level 'none'
end

When 'I ask how much to order' do
  submit_request_for_estimate
end

Then(/^I will know I need to buy (\d+) pizza pies$/) do |pie_count|
  verify_pizzas_needed pie_count
end

Then(/^I will know I need to buy ((?:\d+ cases?)?(?: and )?(?:\d+ six\-packs?)? of beer)$/) do |beer_text|
  verify_beer_needed beer_text
end

Then(/^I will know I don't need to buy beer$/) do
  verify_beer_needed "no beer"
end
