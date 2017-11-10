class Task
  @@all_tasks = []
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end
# writer
  def self.add(description, due_date)
    @@all_tasks << Task.new(description, due_date)
  end
# reader
  def due_date
    @due_date
  end

  def description
    @description
  end

  def self.list
    puts "----+ Task List +----"
    @@all_tasks.each do |task|
      puts "#{task.description} | #{task.due_date}"
    end
  end
end

Task.add("Pick up grocery", "3pm Oct 24, 2017")
Task.add("Go to soccer game", "7pm Nov 13, 2017")
Task.add("Register for GMAT test", "9:30am Dec 1, 2017")
Task.list
