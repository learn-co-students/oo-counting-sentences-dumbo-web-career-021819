require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    p self.split(/[.!?]/).select {|x| x.length > 1}.length
  end
end
