# -*- encoding : utf-8 -*-
require './lib/psd/enginedata'

RSpec.configure do |config|
  unless ENV['CIRCLECI']
    config.filter_run focus: true
  end

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
