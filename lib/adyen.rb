module Adyen
  LIVE_RAILS_ENVIRONMENTS = ['production']  

  def self.autodetect_environment
    (defined?(RAILS_ENV) && Adyen::LIVE_RAILS_ENVIRONMENTS.include?(RAILS_ENV)) ? 'live' : 'test'
  end
end

require 'adyen/encoding'
require 'adyen/form'
require 'adyen/formatter'
require 'adyen/notification'
require 'adyen/soap'