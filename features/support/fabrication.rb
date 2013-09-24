Fabrication.configure do |config|
  config.fabricator_path = 'features/support/fabricators'
  config.path_prefix = Rails.root
  config.sequence_start = 1000
end
