# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage  = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.password_length = 6..128

  config.secret_key = e1972b96561a2b96e96ce350990bccee0906de9f781cd8e478f82593e3e17b64fd96155c8071a5fb7187681e5ad9d96c776b0762b3b0ccc1f07b42068fdcbdf3

  config.expire_all_remember_me_on_sign_out = true
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours
  config.sign_out_via = :get
end
