class Like

	ALL = []

	def self.all
		ALL
	end

	attr_reader :user, :tweet

	def initialize(user, tweet)
		@user = user
		@tweet = tweet
		ALL << self
	end


end
