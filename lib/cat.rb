class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = Array.new
  def initialize(name, owner_instance)
    @name = name
    @owner = owner_instance
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end
end



# def name=(new_name)
#   @instance_variable_name = new_name
# end

# x.name("new name")

# def name
#   @instance_variable_name
# end