require "mmosru_palindrome/version"

class String
  
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  # Returns the letters in the string.
  def letters
    the_letters = []
    for i in 0..self.length - 1 do
      if self[i].match(/[a-zA-Z]/)
        the_letters << self[i]
      end
    end
    the_letters.join
  end
  
  # Returns true if String is blank, false otherwise.
  def blank?
    !!processed_content.match(/\A(^\s+$)*\z/)
  end
  
  private
  
    # Returns content for palindrome testing.
    def processed_content
      self.to_s.letters.downcase
    end
end