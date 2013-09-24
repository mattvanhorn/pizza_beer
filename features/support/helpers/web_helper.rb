module WebHelper
  def guests_expected count
    Site.new_estimate_page.guests_expected = count
  end

  def general_hunger_level hunger
    Site.new_estimate_page.hunger_level = hunger
  end

  def general_thirst_level thirst
    Site.new_estimate_page.thirst_level = thirst
  end

  def submit_request_for_estimate
    Site.new_estimate_page.request_estimate
  end

  def verify_pizzas_needed num_pies
    expect(Site.new_estimate_page).to have_text("#{num_pies} pizza pies")
  end

  def verify_beer_needed beer_text
    expect(Site.new_estimate_page).to have_text(beer_text)
  end
end
World(WebHelper)
