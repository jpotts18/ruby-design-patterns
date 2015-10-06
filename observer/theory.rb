class Subject

  attr_accessor :observers
  attr_accessor :state

  def initialize
    @observers = []
  end

  def register(observer)
    @observers << observer
  end

  def remove(observer)
    @observers.delete_if { |o| o.name == observer.name }
  end

  def notify
    @observers.map { |o| o.update(@state) }
  end

  # custom setter sets states and notifies all observers about the change
  def state=(state)
    @state = state
    notify
  end

end

class Observer

  attr_accessor :name
  attr_accessor :current_state

  def initialize(name)
    @name = name
    @current_state = "N/A"
  end

  def update(state)
    @current_state = state
    display
  end

  def display
    puts "Name: #{@name}, State: #{@current_state}"
  end

end

o = Observer.new('Jeff')
o1 = Observer.new('Owen')
o2 = Observer.new('Lindsey')
o3 = Observer.new('Clark')

s = Subject.new
s.register o
s.register o1
s.register o2
s.register o3
# Should be 4 observers
puts s.inspect
# Removing 1
s.remove o3
puts s.inspect

# Show the current state of the observers
o.display
o1.display

# Update the state of the subject. Should set state of all observers
s.state = "Happy"
