
module Codebreaker
  class Marker
    def initialize(secret, guess)
      @secret = secret
      @guess = guess
    end
    
    def exact_match_count
      (0..3).inject(0) do |count, index|
        count + (exact_match?(index) ? 1 : 0)
      end
    end
    
    def number_match_count
      (0..3).inject(0) do |count, index|
        count + (number_match?(index) ? 1 : 0)
      end
    end
        
    def number_match?(index)
      @secret.include?(@guess[index]) && !exact_match?(index) 
    end
    
    def exact_match?(index)
      @secret[index] == @guess[index]
    end
  end
end