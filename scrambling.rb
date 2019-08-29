class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

end

class Scramble_By_Advancing
  def initialize(contents)
    @contents = contents
  end

  def scramble_by_advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def unscramble_by_advancing_chars(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
      end
    @contents = plain_chars.join
  end
end

class Scramble_By_Reversing
  def initialize(contents)
    @contents = contents
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end

