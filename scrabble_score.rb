class Scrabble 
  
  def initialize(letter)
    @letter_values = { "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, 
                      "r" => 1, "s" => 1, "t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, 
                      "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4,
                      "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10
                    }
    @letter = letter
  end

  def self.score(letter)
    Scrabble.new(letter).score
  end

  def score
    total_score = 0
    if @letter.nil? || @letter[0] == " "
      total_score = 0 
    else
      @letter.downcase.split("").each do |x|
        if x.nil?
          total_score = 0 
        else
          total_score += @letter_values[x]
        end
      end
    total_score
    end
  end
end

a = Scrabble.new('street').score
p a

Scrabble.score('alacrity')