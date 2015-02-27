require 'devise'
# require Rails.root.join("spec/support/macros/controller_macros.rb")

RSpec.configure do |config|
  config.include Devise::TestHelpers, type: :controller
  config.extend ControllerMacros, :type => :controller
end