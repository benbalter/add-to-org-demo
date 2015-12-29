require 'add-to-org'

# Optional: Uncomment the final line to use your own views folder
# (e.g., for serving custom ERB templates from `./views`):
# AddToOrg.views_dir  File.expand_path("./views", File.dirname(__FILE__))

# Optional: Uncomment the final line to use your own public folder
# (e.g., for static assets from `./public`):
# AddToOrg.public_dir = File.expand_path("./public", File.dirname(__FILE__))

# Required: Define your custom validation logic here. You can add additional gems
# to your Gemfile and require them above, e.g., GMan, for advanced functionality.
# The Proc/Block/Lambda will be provided three optional arguments. see
# https://github.com/benbalter/add-to-org#customizing-the-validator for
# additional information on how to configure the validation logic.
AddToOrg.set_validator do |user, verified_emails, client|
  verified_emails.any? { |email| email[:email] =~ /\.gov\z/}
end
