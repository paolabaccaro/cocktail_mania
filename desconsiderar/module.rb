class Voter

	attr_accessor :name, :politics, :all_voters
	@@all_voters = []
  @@all_the_dem_votes = []
  @@all_the_rep_votes = []
	def initialize(name, politics)
		@name = name
		@politics = politics
		@@all_voters << self
	end

	def self.all
		@@all_voters
	end

  def self.count_votes
    p "Votes for Dem: #{@@all_the_dem_votes.length}"
    p "Votes for Rep: #{@@all_the_rep_votes.length}"
    if @@all_the_dem_votes.length == @@all_the_rep_votes.length
      p "they tied"
    elsif @@all_the_dem_votes.length > @@all_the_rep_votes.length
      p "the dem won"
    else
      p "the rep won"
    end
  end

  def self.vote_dem(voter)
    @@all_the_dem_votes << voter
  end

  def self.vote_rep(voter)
    @@all_the_rep_votes << voter
  end
end

class Politician
  attr_accessor :name, :party
  @@all_politicians = []
  def initialize(name, party)
    @name = name
    @party = party
    @@all_politicians << self
  end

  def self.all
    @@all_politicians
  end
end

def start
  seed_data
  arbitrary_condition = false
  while arbitrary_condition == false
  	puts "What would you like to do? (create, list, update, vote)"
    answer = gets.chomp.downcase
    if answer == 'create'
      create
    elsif answer == 'list'
      list
    elsif answer == 'update'
      update
    elsif answer == 'vote'
      vote
      arbitrary_condition = true
    else
      start
    end
  end
end

def create
    p "do you want to create a (V)oter or (P)olitician"
    create_which = gets.chomp.downcase

    if create_which == 'v'

      p "What's your name?"
      voter_name = gets.chomp.downcase
      if voter_name.length == 0
        p "you didn't enter a name!"
        start
      end
      p "What are your politics? (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
      voter_politics = gets.chomp.downcase
      if voter_politics == 'l'
        voter_politics = 'liberal'
      elsif voter_politics == 'c'
        voter_politics = 'conservative'
      elsif voter_politics == 't'
        voter_politics = 'tea party'
      elsif voter_politics == 's'
        voter_politics = 'socialist'
      elsif voter_politics == 'n'
        voter_politics = 'neutral'
      else
        start
      end

      v = Voter.new(voter_name, voter_politics)

    elsif create_which == 'p'
      p "what is the name of the Politician?"
      name = gets.chomp.downcase
      p "What is the party?"
      party = gets.chomp.downcase
      pol = Politician.new(name, party)
      p pol
    else
      p "you didn't enter V or P"
      start
    end
end

def list
  puts "Voters:"
  Voter.all.each do |v|
    puts "#{v.name}, #{v.politics}"
  end
  puts "=============="

  puts "Politicians:"
  Politician.all.each do |pol|
    p "#{pol.name} is a #{pol.party}" 
  end
  puts "=============="
end

def update
  p "What is the name of the voter you want to update"
  name_to_update = gets.chomp.downcase



  Voter.all.each do |v|
    if v.name == name_to_update
      p "Would you like to update your (n)ame or (p)olitics?"
      thing_to_update = gets.chomp.downcase
      if thing_to_update == 'n'
        # do one thing
        p "Please enter your corrected name."
        corrected_name = gets.chomp.downcase
        v.name = corrected_name
      elsif thing_to_update == 'p'
        # do another thing
      else 
        # start
      end
    end
  end
end


def vote
  Voter.all.each do |v|
    num_arr = (1..100).to_a
    random = num_arr.sample
    case v.politics
    when 'c'
      if random > 25
        # Republican
        Voter.vote_rep(v)
      else
        Voter.vote_dem(v)
      end
    when 'l'
      if random < 25
        Voter.vote_rep(v)
      else
        Voter.vote_dem(v)
      end
    when 't'
    when 'n'
    when 's'
    end
  end

  Voter.count_votes()
  # loop through all the voters


  # check each voters politics
  # choose how each will vote based on random number
  # create a random number 0-100  
  # 
end

def seed_data
  voter1 = Voter.new('paula', 'c')
  voter2 = Voter.new('todd', 'l')

  politician1 = Politician.new('paola', 'd')
  politician1 = Politician.new('donald', 'c')
end

start()