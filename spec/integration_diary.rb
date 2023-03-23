require 'secret_diary'
require 'diary'

RSpec.describe "integration for diary" do
  it "returns error for locked diary" do
    diary = Diary.new("This is the contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.lock
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns error for initial state of diary" do
    diary = Diary.new("This is the contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns contents for unlocked diary" do
    diary = Diary.new("This is the contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is the contents"
  end

  it "returns empty string for no contents in diary" do
    diary = Diary.new("")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq ""
  end
end