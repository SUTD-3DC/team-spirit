Clearance.configure do |config|
  config.cookie_expiration = ->(_cookies) { 1.year.from_now.utc }
  config.mailer_sender = '3dc@club.sutd.edu.sg'
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
  config.secure_cookie = false
  config.sign_in_guards = []
  config.user_model = User
  config.allow_sign_up = false
end
