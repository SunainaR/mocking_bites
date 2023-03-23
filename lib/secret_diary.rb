# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @diary_state = "locked"
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    fail "Go away!" if @diary_state == "locked"
    @diary.read if @diary_state == "unlocked"
  end

  def lock
    # Locks the diary
    # Returns nothing
    @diary_state = "locked"
  end

  def unlock
    # Unlocks the diary
    # Returns nothing
    @diary_state = "unlocked"
  end
end