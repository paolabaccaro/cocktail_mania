class Voter
  attr_accessor :name, :politics
  	@@ll_voters = []

  def initialize (name, politics)
    @name = name
    @politics = politics
    @@ll_voters << self
  end
end

their_name = gets.chomp
@@all_voters.each do |v|
	if their_name == v.name





  @@chance_of_republican = {
    "T" => 90,
    "C" => 75,
    "N" => 50,
    "L" => 25,
    "S" => 10
  }

  def vote politicians

    party = (rand(100) <= @@chance_of_republican[@politics]) ? "R" : "D"

    candidates = politicians.select do |politician|
      politician.politics == party
    end 

    candidates.sample
    # return single politician
  end
end