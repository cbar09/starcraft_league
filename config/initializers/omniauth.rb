OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :developer unless Rails.env.production?
  provider :twitter, 'ivzbsCwS9iyo63DeAdgXQw', 'VMDu1jQbHwpBf2rHbrKfqEZ8woYElb4niISosTKOHuQ'
  provider :facebook, ENV['344276655660229'], ENV['abcf1bb33ba4fbaddfbea14c31ddef99']
  provider :identity, on_failed_registration: lambda { |env|
      IdentitiesController.action(:new).call(env)
    }
end