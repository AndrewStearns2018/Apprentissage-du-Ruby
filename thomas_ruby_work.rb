#!/usr/bin/ruby

require 'find'
require 'set'

class Trig
  def initialize(terms)
    @terms = terms
  end

  def cosine(arg)
    value = 0
    @terms.times.each do |i|
      if i % 2 == 0
        if i % 4 == 0
          value += ((arg ** i) / factorial(i).to_f)
        elsif (i - 2) % 4 == 0
          value -= ((arg ** i) / factorial(i).to_f)
        end
      end
    end

    return value
  end

  def sine(arg)
    value = 0
    @terms.times.each do |i|
      if i % 2 == 1
        if (i + 1) % 4 == 0
          value += ((arg ** i) / factorial(i))
        elsif (i - 1) % 4 == 0
          value -= ((arg ** i) / factorial(i))
        end
      end
    end

    return value
  end

  def tan(arg)
    return sine(arg, 5) / cosine(arg, 5)
  end
end

class Dimensions
  def initialize(height, width, length)
    @height = height
    @width = width
    @length = length
  end

  def volume
    '''
    calculates volume
    '''
    return @height * @width * @length
  end

  def surface_area
    return 2 * @height * @width + 2 * @height * @length + @width * @length
  end
end

def fizzbuzz(ceiling)
  ceiling.times do |n|
    if n % 15 == 0
      puts "fizzbuzz #{n}!"
    elsif n % 5 == 0
      puts "fizz #{n}!"
    elsif n % 3 == 0
      puts "buzz #{n}!"
    end
  end
end

def factorial(n)
  return (n == 1 or n == 0) ? 1 : n * factorial(n - 1)
end

def iter_factorial(n)
  start = 1
  (1..n).each do |i|
    start *= i
  end

  return start
end

def remove_stops(my_string)
  new_string = ''
  word_array = my_string.split(" ")
  stops = ["a", "the", "to", "an", "fuck"]
  word_array.each do |word|
    stops.each do |stop|
      (word == stop) ? word_array.delete(word) : nil
    end
  end

  return word_array
end

def median(my_array)
  sorted = my_array.sort
  my_length = sorted.length
  if my_length % 2 == 1
    return sorted[((my_length - 1) / 2) + 1]
  else
    return sorted[my_length / 2] + sorted[(my_length / 2) + 1]
  end
end

class NewtonsMethod
  def initialize(start_value, iterations, threshold)
    @start_value = start_value
    @iterations = iterations
    @threshold = threshold
  end

  def cube(x)
    return x ** 3
  end

  def dcube(x)
    return 3 * x ** 2
  end

  def newton
    value = @start_value
    @iterations.times.each do
      value -= (cube(value) / dcube(value))
      if value.abs < @threshold
        puts "SUCCESS! APPROXIMATE ROOT IS " + value.to_s
        break
      end
    end

    if value.abs > @threshold
      puts "FAILURE! LAST APPROXIMATE ROOT IS " + value.to_s
    end

    return value
  end
end

class MarkovModel
  def initialize(my_file, words)
    @file = File.open(my_file, 'rb')
    @big_string = @file.read
    @words = @big_string.split(" ")
  end

  def get_trigrams
    @trigrams = []
    (@words.length / 3).to_i.times.each do |index|
      @trigrams << @words[index..(index + 3)]
    end
  end

  def get_token_hash
    @word_hash = Hash.new
    @trigrams.each do |trigram|
      if @word_hash.key?(trigram[0] + ' ' + trigram[1])
        @word_hash[trigram[0] + ' ' + trigram[1]] << trigram[2]
      else
        @word_hash[trigram[0] + ' ' + trigram[1]] = []
        @word_hash[trigram[0] + ' ' + trigram[1]] << trigram[2]
      end
    end
  end

  def generate_text(length)
    text = []
    text_string = ''
    seed_index = rand(1..@words.length - 2)
    first_word = @words[seed_index]
    second_word = @words[seed_index + 1]
    text_string += first_word + ' '
    text_string += second_word + ' '
    text << first_word
    text << second_word
    length.times.each do
      third_word = @word_hash[first_word + ' ' +  second_word].sample
      text << third_word
      first_word = text[-2]
      second_word = text[-1]
      text_string += third_word + ' '
    end

    puts text_string

    return 0
  end
end

x = Trig.new(5)
puts x.cosine(1)
puts x.sine(0)
