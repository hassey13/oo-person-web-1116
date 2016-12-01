# your code goes here
class Person
	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene


	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def cap_points(points)
	  point = points
		if point > 10
			return point = 10
		elsif point < 0
			return point = 0
		else
			return point
		end
	end

	def happiness= (points)
		@happiness = cap_points(points)
	end

	def hygiene= (points)
		@hygiene = cap_points(points)
	end

	def happy?
		if happiness > 7
			true
		else 
			false
		end
	end

	def clean?
		if hygiene > 7
			true
		else 
			false
		end
	end

	def get_paid(money = 100)
		@bank_account += money
		"all about the benjamins"
	end

	def take_bath
		 self.hygiene = (hygiene + 4)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		 self.hygiene = (hygiene - 3)
		 self.happiness = (happiness + 2)
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		if topic == "politics"
			self.happiness -= 2
			friend.happiness -= 2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			friend.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end


end
