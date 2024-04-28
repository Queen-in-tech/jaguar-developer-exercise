class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    
    #step 1: Split string into an array of words
    words = str.split(/\b/)

    #step 2: iterate over word in word array
    words.each_with_index do |word, index|

      #step 3: check if length is greater than 4
      if word.length > 4
        # step 4: if condition is true check, if word is capitalized and replace word as needed
        if word == word.capitalize
          words[index] = "Marklar"
        else 
          words[index] = "marklar"
        end
      end
    end

    #step 5: return new string with changed words
    return words.join("")

  end


  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method

    return 0 if nth == 0
    sequence = [0, 1]
    even_sequence = []

    (2..nth).each do |i|
      sequence << sequence[i - 1] + sequence[i - 2]
    end

    sequence.each do |i|
      if i % 2 == 0
        even_sequence << i
      end
    end

      return even_sequence.sum
  end

  puts self.even_fibonacci(5)
end
