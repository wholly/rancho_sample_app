# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rancho_app_session',
  :secret      => '58e536901deb3ed13c4a101cc40edcd458c86e2c989a72fe4385927b0ccb95edfb71532ac5c471155b2c935145957675de2ae539a7c4edc5f46131510d73b7d4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
