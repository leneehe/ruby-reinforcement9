class Task
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end
# writer
  def edit(description, due_date)
    @description = description
    @due_date = due_date
  end
# reader
  def due_date
    @due_date
  end

  def description
    @description
  end

end

class TodoList
  def initialize(name)
    @name = name
    @tasks = []
  end

  # writer
  def add_task(task)
    @tasks << task
  end

  def list
    puts "----+ #{@name} +----"
    @tasks.each do |task|
      puts "#{task.description} | #{task.due_date}"
    end
  end

end

task1 = Task.new("Pick up grocery", "3pm Oct 24, 2017")
task2 = Task.new("Go to soccer game", "7pm Nov 13, 2017")
task3 = Task.new("Register for GMAT test", "9:30am Dec 1, 2017")
my_list = TodoList.new("My NEW Tasks")
my_list.add_task(task1)
my_list.add_task(task2)
my_list.add_task(task3)
my_list.list
