require 'minitest/autorun'
require './lib/gate.rb'
require './lib/ticket.rb'

class GateTest < Minitest::Test
	def test_gate
		tenjin = Gate.new(:tenjin)
		hakata = Gate.new(:hakata)

		ticket = Ticket.new(210)
		tenjin.enter(ticket)
		assert hakata.exit(ticket)
	end

	def test_tenjin_to_fukuoka_airport_when_fare_is_not_enough
		tenjin = Gate.new(:tenjin)
		fukuoka_airport = Gate.new(:fukuoka_airport)

		ticket = Ticket.new(210)
		tenjin.enter(ticket)
		refute fukuoka_airport.exit(ticket)
	end

end
