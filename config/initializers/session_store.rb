# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_money_management_session',
  :secret      => 'cf4900977b52b534ec5a034ef13b5bf882cf3a1561e1b2eace4e252a04c77f69f797965b3afaf9ea63dee8e4d113e11b2a9aeda13c09c1ce7a333fcbba29f58b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
