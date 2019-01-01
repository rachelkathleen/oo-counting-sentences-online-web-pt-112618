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
    #self.count(".") + self.count("!") + self.count("?")
    self.split.map {|word| word.end_with?("!", ".", "?")}.count(true)
  end
end
