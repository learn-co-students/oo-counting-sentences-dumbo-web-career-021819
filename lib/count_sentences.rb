require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    counter = 0
    words = self.split
    words.each do |word|
      counter += 1 if word.sentence? || word.question? || word.exclamation?
    end
    counter
  end

end
