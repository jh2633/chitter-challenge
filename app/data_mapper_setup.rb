require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper::Logger.new($stdout, :debut)
DataMapper.finalize
DataMapper.auto_upgrade!
