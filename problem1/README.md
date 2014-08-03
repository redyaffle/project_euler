## Problem 1 of [Project Euler](https://projecteuler.net/problem=1)

I thought maybe I'd start from the beginning on this one. The solution was easy enough, but my first iteration included a few unsavory lines. Here are a few things I fixed.

#### collect_multiples
```
  def collect_multiples
    multiples = []
    (1..@max_test_number).each do |num|
      multiples << num if divisible_by_factor(num)
    end
    multiples
  end
```

The first version of this method was clunky. Iterating over a range to build a new array, based on a conditional is simple enough, but inelegant in this solution. A couple of tweaks yielded this one: 

```
  def collect_multiples
    (1..@max_test_number).select do |num|
      divisible_by_factor(num)
    end
  end
```

This one I felt much better about. A lot cleaner, and the method yields the array I want without wasting time assembling it and storing it somewhere separately. 

#### range
I also didn't like the way I'd dealt with an exclusive range. The summation was not supposed to include the max number, so I had initialized the class with the max minus one: 
```
p SumMultiplesOfFactors.new(1000-1, 3, 5).sum_multiples
```

This did the job but offered little explanation as to why I was excluding that one. Instead, I opted back to 
```
p SumMultiplesOfFactors.new(1000, 3, 5).sum_multiples
```

I then searched the range documentation for something a little more fitting and discovered [exclusive ranges](http://www.ruby-doc.org/core-1.9.3/Range.html). This led me to an exclusive range instance, which also lent itself to further cleaning up collect_multiples.
```
    @multiples_range = Range.new(1, max_number, exclusive: true)
```
```
  def collect_multiples
    @multiples_range.select do |num|
      divisible_by_factor(num)
    end
  end
```

My solution was then flexible, neat, and clean. And correct!
