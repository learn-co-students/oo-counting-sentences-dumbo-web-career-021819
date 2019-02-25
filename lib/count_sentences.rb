# require 'pry'

class String

  def sentence?
    self.include?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.include?("!")
  end

  def count_sentences
    if self.include?(".") && self.include?(",")
      self.split(",").length
    else
      self.lines(" ").length
    end
  end
end

# string = String.new
# # string = "one. two. three?"
# p string =  "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# p string.count_sentences
