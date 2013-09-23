module EstimatesHelper

  def display_pizza_estimate(pies)
    "#{pluralize(pies, 'pizza pie')}"
  end

end
