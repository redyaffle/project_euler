class Palindrome
  attr_reader :product

  def initialize(num_one, num_two)
    @product = num_one*num_two
    @digits = @product.to_s.split("").map { |d| d.to_i }
  end

  def is_palindrome_by_array?
    digits = @product.to_s.split("").map { |d| d.to_i }
    i = 0
    while i < digits.length / 2
      if digits[i] != digits[-(i+1)]
        return false
      end
      i += 1
    end

    return true
  end

  def is_palindrome_by_string?
    @product.to_s == @product.to_s.reverse
  end
end


palindromes = []

(100..999).reverse_each do |num_one|
  (100..999).reverse_each do |num_two|
    palindromic = Palindrome.new(num_one, num_two)
    if palindromic.is_palindrome_by_array?
      palindromes << palindromic.product
    end
  end
end

p palindromes.max
