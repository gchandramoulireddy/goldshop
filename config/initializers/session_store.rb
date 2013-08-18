# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_goldshop_session',
  :secret      => 'a9db4970237ec71691331de239154e58e25600cf4dba23fd9576ed936ad4bc0dde3fdac6fb70ea7f7532fa5cbf99b10230244751d8ec4e335f92359e74591f88'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
