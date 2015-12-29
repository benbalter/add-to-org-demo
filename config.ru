require 'add-to-org'

module AddToOrg
  class App < Sinatra::Base

    # Optional: Use your own view templates
    set :views, File.expand_path "./views", File.dirname(__FILE__)

    # Optional: Use your own public folder
    set :public_dir, File.expand_path "./public", File.dirname(__FILE__)

    # Required: Monkey patch your custom validation logic here.
    # You can add additional gems to your Gemfile and
    # require them above, e.g., GMan, for advanced functionality.
    def valid?
      verified_emails.any? { |email| email[:email] =~ /\.gov\z/}
    end
  end
end

run AddToOrg::App
