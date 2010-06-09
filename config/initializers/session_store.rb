# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsblog_session',
  :secret      => '4d2a7c2aefe6a16946a50b866b00e7a43f549bfc19e86a0e34219cc1a1baa12cc430581dc135383c81c8d9df675280224e94f7f7d575ee5366049fbb6a738066'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
