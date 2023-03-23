require 'diary'

RSpec.describe Diary do

  it "returns empty string with empty contents" do
    diary = Diary.new("")
    expect(diary.read).to eq ""
  end

  it "returns the contents" do
    diary = Diary.new("This is some more contents")
    expect(diary.read).to eq "This is some more contents"
  end
end