class NewEstimatePage < SitePrism::Page
  URL = Rails.application.routes.url_helpers.root_path
  set_url URL
  set_url_matcher %r(#{URL})

  element :guests_field, "input[name='estimate[guest_count]']"
  element :slices_field, "input[name='estimate[slice_count]']"
  element :submit_btn, "input[name='commit']"

  def guests_expected=(guest_count)
    load unless displayed?
    guests_field.set guest_count
  end

  def hunger_level=(hunger)
    load unless displayed?
    slices_per_person = case hunger
      when 'full'     then 1
      when 'hungry'   then 2
      when 'starving' then 3
    end
    slices_field.set slices_per_person
  end

  def request_estimate
    load unless displayed?
    submit_btn.click
  end

end
