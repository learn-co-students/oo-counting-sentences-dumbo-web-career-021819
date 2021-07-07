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
    count = 0
    self.split(/[.!?]/).map do |sentence|
      if !(sentence == "")
        count += 1
      end
    end
    count
end

end
