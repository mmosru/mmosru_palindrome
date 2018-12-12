require "mmosru_palindrome/version"

module MmoPalindrome
  
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  # Returns true if String is blank, false otherwise.
  def blank?
    !!processed_content.match(/\A(^\s+$)*\z/)
  end
  
  private
  
    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include MmoPalindrome
end

class Integer
  include MmoPalindrome
end