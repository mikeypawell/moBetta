# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.routes.draw do
  resources :meetings
  root to: "meetings#index"
end