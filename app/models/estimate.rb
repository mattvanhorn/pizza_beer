class Estimate
  include Virtus
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :guest_count, Integer
  attribute :slice_count, Integer
  attribute :beer_count, Integer

  SLICES_PER_PIE = 8
  BOTTLES_PER_SIX_PACK = 6
  SIX_PACKS_PER_CASE = 4

  def persisted?
    false
  end

  def slices
    guest_count * slice_count
  end

  def pies
    (slices.to_f / SLICES_PER_PIE).ceil
  end

  def bottles
    guest_count * beer_count
  end

  def six_packs
    (bottles.to_f / BOTTLES_PER_SIX_PACK).ceil
  end

  def cases
    if six_packs == 4
      1
    else
      (bottles.to_f / (SIX_PACKS_PER_CASE * BOTTLES_PER_SIX_PACK)).floor
    end
  end

  def beer
    [cases, six_packs - (cases * SIX_PACKS_PER_CASE)]
  end
end


