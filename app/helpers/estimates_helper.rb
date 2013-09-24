module EstimatesHelper
  def display_pizza_estimate(pies)
    "#{pluralize(pies, 'pizza pie')}"
  end

  def display_beer_estimate(cases, sixpacks)
    output = []
    output << (pluralize(cases, "case")) if cases > 0
    output << (pluralize(sixpacks, "six-pack")) if sixpacks > 0
    if output.empty?
      'no beer'
    else
      output.join(' and ') << ' of beer'
    end
  end
end
