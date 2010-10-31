# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_elected_session',
  :secret      => 'bed7667c2d4dccb917d44b026e625fa9ee28f4b123d3bbc18fffa17a8535de35378bc8341f1a6a6143cf703555d6e5db83ef1c316154c9ead4a84501c975abce'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
