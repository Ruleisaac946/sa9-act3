class TaskManager
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task)
    @tasks.delete(task)
  end

  def view_tasks
    @tasks
  end
end

if __FILE__ == $PROGRAM_NAME
  manager = TaskManager.new
  manager.add_task("Task 1")
  manager.add_task("Task 2")
  manager.add_task("Task 3")
  puts "Tasks: #{manager.view_tasks}"
end
