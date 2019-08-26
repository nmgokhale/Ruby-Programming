require "set"
require_relative "player"
class Ghost

    attr_reader :fragment, :losses, :dictionary, :players
    def initialize(*players)
        # Read words from dictionary.txt file and store it in a set @dictionary
        content = File.readlines('dictionary.txt')
        content = content.map { |word| word.chomp }
        @dictionary = Set.new(content)
        @players = players
        @fragment = ""
        # # While this creates a new default object each time
        # h = Hash.new { |hash, key| hash[key] = "default value" }
        @losses = Hash.new { |losses, player| losses[player] = 0 }
    end
    
    def run 
        # call #play_round until one of the players reaches 5 losses ("GHOST")
        self.play_round
    end

    def display_standings
        # show the scoreboard at the beginning of each round
        
    end

    def play_round
        # Update @losses hash
        # reset the fragment at the beginning of each round
        @fragment = ""
    end

    def record(player)
        # translates a player's losses into a substring of "GHOST"
    end

    def current_player
    end

    def previous_player
    end

    def next_player!
    end

    def take_turn(player)
    end

    def valid_play?(string)
        # Checks that string is a letter of the alphabet
        # and that there are words we can spell after adding it to the fragment
        alphabets = "abcdefghijklmnopqrstuvwxyz"
        if alphabets.include?(string) && (@dictionary).include?(@fragment << string)
            return true
        else
            return false
        end
    end

    def losses
    end

    def record
    end
end

g1 = Ghost.new(
    Player.new("Neha"),
    Player.new("Neeraj"),
    Player.new("Nisha"),
    Player.new("Mohan")
)
p g1.losses