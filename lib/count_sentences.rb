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
    #create a sentence variable to split
    sentence = self.split(/\.|\!|\?/)
    sentence = sentence.reject {|x| x.empty?}
    sentence.count
    end
  end
