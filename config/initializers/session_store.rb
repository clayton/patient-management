# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_patient-management_session',
  :secret      => '4814c768a6600e7a7523144ec7cdb7527f5246eec6b232cfb8cff4735302ecde9a79fd46e438bde1852ef1ccd9188711b5935b10221ea1429fabc54cfcd41172'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
