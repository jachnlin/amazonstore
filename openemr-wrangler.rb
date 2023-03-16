
#!/bin/ruby

# Listen for changes in a MySQL db
# When a change is detected, wrangle data into a blockchain ledger

require 'mysql2'
require 'excon'
require 'json'

# this takes a hash of options, almost all of which map directly
# to the familiar database.yml in rails
# See http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/MysqlAdapter.html