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
    sentences = self.split(/[.!?]/)
    counter = 0
    amount_of_sentences = 0
    while counter < sentences.count
      if sentences[counter].size !=0
        amount_of_sentences = amount_of_sentences+1
      end
      counter = counter+1
    end
    amount_of_sentences
  end
end
complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts complex_string.count_sentences