class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split(' ')
    
    marklar_words = words.map do |word|
      match_data = word.match(/([a-zA-Z]+)(.*)/)
      next word unless match_data

      core_word = match_data[1]
      punctuation = match_data[2] || ""

      if core_word.length > 4
        if core_word[0] == core_word[0].upcase
          "Marklar" + punctuation
        else
          "marklar" + punctuation
        end
      else
        word
      end
    end

    marklar_words.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    return 0 if nth <= 1

    sequence = [1, 1]

    while sequence.length < nth
      next_number = sequence[-1] + sequence[-2]
      sequence << next_number
    end
    sequence.select { |num| num.even? }.sum
  end

end
