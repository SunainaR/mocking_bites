require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  context "add multiple tasks" do
    it "return all" do
      task_list = TaskList.new
      task1 = double :task
      task2 = double :task
      task_list.add(task1)
      task_list.add(task2)
      expect(task_list.all).to eq [task1, task2]
    end

    it "return true for all_complete?" do
      task_list = TaskList.new
      task1 = double :task, complete?: true
      task2 = double :task, complete?: true
      task_list.add(task1)
      task_list.add(task2)
      expect(task_list.all_complete?).to eq true
    end

    it "return false for all_complete?" do
      task_list = TaskList.new
      task1 = double :task, complete?: true
      task2 = double :task, complete?: false
      task_list.add(task1)
      task_list.add(task2)
      expect(task_list.all_complete?).to eq false
    end

  end
end
