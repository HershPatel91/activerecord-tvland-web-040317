require 'pry'
class Character < ActiveRecord::Base
  	belongs_to :actor
	belongs_to :show

	def say_that_thing_you_say
		"#{self.name} always says: #{self.catchphrase}"
	end

	def build_show(name: name)
		self.show = Show.new(name: name)
	end

	# def build_network(caller_id: caller)
	# 	self.show.network = Network.new(caller_id: caller)
	# end

end