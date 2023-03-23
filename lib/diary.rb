# File: lib/diary.rb
class Diary < Struct.new(:contents)
  def read
    # Returns the contents of the diary
    contents
  end
end

=begin

end
class Diary
  def initialize(contents) # contents is a string
    @contents = contents
  end

  def read
    # Returns the contents of the diary
    @contents
  end
end

=end