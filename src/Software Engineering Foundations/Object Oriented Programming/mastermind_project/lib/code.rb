class Code

  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(array)
    array.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def initialize(array)
    if !Code.valid_pegs?(array)
      raise "no valid pegs"
    else
      @pegs = array.map { |char| char.upcase }
    end
  end

  def self.random(length)
    new_array =Array.new(length)
    random = new_array.map { |el| el = POSSIBLE_PEGS.keys.sample }
    Code.new(random)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess) # Important
    matches = 0
    guess.pegs.each_with_index do |peg, idx|
      if @pegs.index(peg) == idx
        matches += 1
      end
    end
    matches
  end

  def num_near_matches(guess) # Important
    near_match = 0
    guess.pegs.each_with_index do |peg, idx|
      if @pegs.include?(peg) && peg != @pegs[idx] 
        near_match += 1
      end
    end
    near_match
  end

  def ==(other_code)
    return false if other_code.length != self.length
    self.pegs == other_code.pegs
  end

end
