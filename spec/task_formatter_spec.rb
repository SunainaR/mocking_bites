require 'task_formatter'

RSpec.describe TaskFormatter do
  
  it "returns format for incomplete task" do
    task = double :task, title: "Walk the dog", complete?: false
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "- [ ] Walk the dog"
  end

    it "returns format for complete task" do
      task = double :task, title: "Walk the dog", complete?: true
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] Walk the dog"
    end

end