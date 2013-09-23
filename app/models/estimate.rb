class Estimate
  include Virtus
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :guest_count, Integer
  attribute :slice_count, Integer

  SLICES_PER_PIE = 8

  def persisted?
    false
  end

  def slices
    guest_count * slice_count
  end

  def pies
    (slices.to_f / SLICES_PER_PIE).ceil
  end
end


