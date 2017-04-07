# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19
# letters used in total.If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?
# Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters
# and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in
# compliance with British usage.

require 'benchmark'
require 'bigdecimal/math'

puts Benchmark.measure {
  def in_words(number)
    number_hash = {
            1 => 'one',
            2 => 'two',
            3 => 'three',
            4 => 'four',
            5 => 'five',
            6 => 'six',
            7 => 'seven',
            8 => 'eight',
            9 => 'nine',
            10 => 'ten',
            11 => 'eleven',
            12 => 'twelve',
            13 => 'thirteen',
            14 => 'fourteen',
            15 => 'fifteen',
            16 => 'sixteen',
            17 => 'seventeen',
            18 => 'eighteen',
            19 => 'nineteen',
            20 => 'twenty',
            30 => 'thirty',
            40 => 'forty',
            50 => 'fifty',
            60 => 'sixty',
            70 => 'seventy',
            80 => 'eighty',
            90 => 'ninety',
            100 => 'one hundred',
            200 => 'two hundred',
            300 => 'three hundred',
            400 => 'four hundred',
            500 => 'five hundred',
            600 => 'six hundred',
            700 => 'seven hundred',
            800 => 'eight hundred',
            900 => 'nine hundred',
            1000 => 'one thousand'
        }
      result = " "
      number_hash.keys.reverse.each do |key|
        quotient, remainder = number.divmod(key)
        result << number_hash[key] * quotient
        number = remainder
      end
      result.delete(" ")
  end
  and_total = ("and".length * 99) * 9  #2673 total length of all ands.
  p (1..1000).map{|num| in_words(num)}.join.length + and_total #21124  <--- answer.
}
# execution times may vary from computer to computer, but on my mac it took (  0.032600) seconds to execute.
