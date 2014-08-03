class SumMultiplesOfFactors
  def initialize(max_number, *factors)
    @factors = factors
    @multiples_range = Range.new(1, max_number, exclusive: true)
  end

  def collect_multiples
    @multiples_range.select do |num|
      divisible_by_factor(num)
    end
  end

  def sum_multiples
    collect_multiples.inject(:+)
  end

  private

  def divisible_by_factor(num)
    @factors.any? { |factor| num % factor == 0 }
  end
end


p SumMultiplesOfFactors.new(1000, 3, 5).sum_multiples
