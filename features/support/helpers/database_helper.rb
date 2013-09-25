module DatabaseHelper
  def guests_expected guest_count
    guest_count.times{ Fabricate(:guest) }
  end
end

