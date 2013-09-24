class NewEstimatePage < SitePrism::Page
  URL = Rails.application.routes.url_helpers.root_path

  set_url URL
  set_url_matcher %r(#{URL})

  element :hunger_select, "select[name='estimate[slice_count]']"
  element :thirst_select, "select[name='estimate[beer_count]']"
  element :submit_btn, "input[name='commit']"

  def hunger_level=(hunger)
    load unless displayed?
    hunger_select.select hunger
  end

  def thirst_level=(thirst)
    load unless displayed?
    thirst_select.select case thirst
      when 'like' then 'thirsty'
      when 'love' then 'extremely thirsty'
      else 'none'
    end
  end

  def request_estimate
    load unless displayed?
    submit_btn.click
  end

end
