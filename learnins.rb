class String
  def shuffle
    self.split('').shuffle.join
  end
end

class Word < String #makes class Word that inherits all string methods and adds a new one
  def palindrome?(s)
    self==self.reverse #self refers to the object, where the object is the instance created by the word class
  end
end



s = Word.new("Malayalam").downcase #instance that self refers to
puts s.palindrome?(s)
puts s.length
puts s.shuffle

class User
  attr_accessor :name, :email

  def initialize(attributes = {}) #initialize is called when creating an instance of the class i.e. User.new
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{email}>"
  end

end
