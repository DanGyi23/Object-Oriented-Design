class User
  attr_reader :profile, :auth

  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
    @auth = Auth.new
  end

  def profile
    return "#{@name}, born in #{birth_year}: #{@bio}" if self.auth.unlocked == true
    "Not authenticated"
  end

  def birth_year
    Time.new.year - @age
  end
end


class Auth

  attr_reader :unlocked

  def initialize
    puts "Enter password"
    @password = gets.chomp
    @unlocked = false
  end

  def authenticate(candidate_password)
    if candidate_password == @password
      @unlocked = true 
    else
      @unlocked = false
    end
  end

end