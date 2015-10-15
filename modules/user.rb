require './connect.rb'

class User < ActiveRecord::Base
	validades :name, :email, presence: true
	validades :email, format: { with: /\A[^@]+@[^@]+\z/ }
end