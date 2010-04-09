# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lurkit_session',
  :secret      => '10903cc3dbfffe8ce09ea17cd81024de5d0fb763b0c70026395bcdcb024ac61ee875db2f83237c96e3976755af2a7202af09838c3044389339da1959ba489901'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
