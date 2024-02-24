require "task_manager"

RSpec.describe TaskManager do
  let(:manager) { TaskManager.new }

  describe "#add_task" do
    it "adds a task to the list" do
      manager.add_task("Task 1")
      expect(manager.view_tasks).to include("Task 1")
    end
  end

  describe "#remove_task" do
    it "removes a task from the list" do
      manager.add_task("Task 1")
      manager.remove_task("Task 1")
      expect(manager.view_tasks).not_to include("Task 1")
    end
  end

  describe "#view_tasks" do
    it "returns the list of tasks" do
      manager.add_task("Task 1")
      manager.add_task("Task 2")
      expect(manager.view_tasks).to eq(["Task 1", "Task 2"])
    end
  end
end
