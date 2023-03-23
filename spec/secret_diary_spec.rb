require 'secret_diary'

RSpec.describe SecretDiary do
  it "returns error for initial state" do
    diary = double(:diary, contents: "This is the cat's diary")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns contents for unlocked diary" do
    diary = double(:diary, read: "This is the cat's diary")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is the cat's diary"
  end

  it "returns contents for unlocked diary" do
    diary = double(:diary, read: "This is the cat's diary")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "This is the cat's diary"
  end

  it "returns error for unlocked then locked diary" do
    diary = double(:diary, read: "This is the cat's diary")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.read }.to raise_error "Go away!"
  end
end
