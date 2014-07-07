class IsPalindrome
  def initialize(num_one, num_two)
    @product = num_one, num_two
    @digits = @product.to_s.split()
  end

  def palindrome?
    i = 0
    while i < @digits.length / 2
      if @digits[i] != @digits[-i]
        return false
      end
    end

    return true
  end
end

(100..999).each do |num_one|

end
