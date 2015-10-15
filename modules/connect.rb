require 'active_record'

ActiveRecord::Base.logger = Logger.new STDOUT

ActiveRecord::Base.establish_connection(
	adapter: 'mysql2',
	host: '159.203.107.170',
	username: 'wyncode',
	password: 'wyncode',
	database: 'wyncode'
	)