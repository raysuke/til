class Gate
	STATIONS = {
		0 => :tenjin,
		1 => :hakata,
		2 => :fukuoka_airport,
	}
	FARES = [210, 260]
	def initialize(name)
		@name = name
	end

	def enter(ticket)
		ticket.stamp(@name)
	end

	def exit(ticket)
		fare = calc_fare(ticket)
		fare <= ticket.fare
	end

	def calc_fare(ticket)
		from = STATIONS.key(ticket.stamped_at)
		to = STATIONS.key(@name)
		distance = to - from
		FARES[distance - 1]
	end
end
