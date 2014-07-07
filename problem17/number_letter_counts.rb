require 'numbers_and_words'

class NumberToWordCount
  def initialize
    @numbers = (1..1000)
  end

  def to_words
    all_nums = ""
    @numbers.each do |num|
      I18n.with_locale(:en) do
        all_nums += num.to_words hundreds_with_union: true
      end
    end
    all_nums
  end

  def all_words_length
    to_words.gsub(/[^A-Za-z]/, '').length
  end
end

p NumberToWordCount.new.all_words_length
