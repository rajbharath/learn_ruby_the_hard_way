module Ex25
  def Ex25.break_words(stuff)
    stuff.split(' ')
  end

  def Ex25.sort_words(words)
    words.sort
  end

  def Ex25.print_first_word(words)
    puts words.shift
  end

  def Ex25.print_last_word(words)
    puts words.pop
  end

  def Ex25.sort_sentence(sentence)
    words  = Ex25.break_words(sentence)
    Ex25.sort_words(words)
  end

  def Ex25.print_first_and_last(sentence)
    words  = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end
end

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
puts words
puts Ex25.sort_words(words)
puts Ex25.print_first_word(words)
puts Ex25.print_last_word(words)
puts Ex25.print_first_and_last(sentence)