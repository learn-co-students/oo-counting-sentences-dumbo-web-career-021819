require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    array_sentences = self.split(/[.!?]/)
    count = 0
    array_sentences.each do |sentence|
      if sentence.length > 0
        count += 1
      end
    end
    count
  end
  
end
