# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hData-vista_session',
  :secret      => '619689295f48f58bf17e538cbea548668de5d4b1d6d652274bb4c54f72bdee0ee6edcbe0e88b31948309d88786bfeaaa6e2b6885ef81794566167bd1064aaa82'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
