class Scrabble 
  
  def self.score(letter)
    Scrabble.new(letter).score
  end

  def initialize(letter)
    
    @letter_values = { "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, 
                      "r" => 1, "s" => 1, "t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, 
                      "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4,
                      "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10
                    }
    @letter = letter
    @total_score = 0
    input_parse
  end

  def input_parse
    if @letter.nil? || @letter == " "
      total_score = 0
    else
      @letter = @letter.gsub(/\W/, "").downcase
    end
  end

  def score
    # if @letter == nil then return 0 end
    return 0 if @letter == nil
    
    @letter.split("").each do |x|
      if x.nil?
        @total_score = 0 
      else
        @total_score += @letter_values[x]
      end
    end
    @total_score
  end
end

p Scrabble.new('MULTIBILLIONAI RE').score