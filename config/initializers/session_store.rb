# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cmyes_session',
  :secret      => '8b6279ff904a87882f242f269cb0bb310b7f81dacd4156b1835ab7550b99172369a823a3eaebe291d4f90fa4fba7d75bf12ce6e448a80ea46d8f84731f6444b7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
