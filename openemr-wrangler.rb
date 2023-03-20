
#!/bin/ruby

# Listen for changes in a MySQL db
# When a change is detected, wrangle data into a blockchain ledger

require 'mysql2'
require 'excon'
require 'json'

# this takes a hash of options, almost all of which map directly
# to the familiar database.yml in rails
# See http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/MysqlAdapter.html
client = Mysql2::Client.new(:host => "localhost", :port => "3306", :username => "root", :password => "rootpw", :database => "openemr")

# connection = Excon.new(
# 'http://ce018849.ngrok.io/mineblock',
# :instrumentor => ActiveSupport::Notifications
# )

# last_index_value set manually for hackathon demo
last_index_value = 61

while true

    result = client.query("SELECT COUNT(*) FROM log")
