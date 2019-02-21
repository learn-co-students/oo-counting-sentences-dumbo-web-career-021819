require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentences_list = self.split(/[!].*[!]/)
    sentences_list = sentences_list.map do |sentence_section|
      sentence_section.split(/[?.]/)
    end
    sentences_list.flatten!
    if sentences_list.select{|sentence| sentence.include?(".")} == nil
      return 0
    else
      p sentences_list
      return sentences_list.length
    end
  end

end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
