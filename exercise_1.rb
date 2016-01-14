class Person #created a class name Person

  attr_accessor :name # define a method for SETTER and GETTER

  def initialize(name) # initialize an instance variable @name
    @name = name
  end

  def introduce_my_self # defined a method to introduce one self
        puts "Hi, my name is #{@name}"
  end
end



class Student < Person # create class Student and inheriet Person class

  def learn # create an instance method for Student class
    puts "I get it"
  end

end

class Instructor < Person # create class Instructor and inheriet Person class

  def teach # create an instance method for class Instrutor
    puts "Everything in Ruby is an Object"
  end

end

chris = Instructor.new("Chris") # create an instance of Instructor name 'chris'
cristina = Student.new("Cristina") # create an instance of Student name 'cristina'

cristina.introduce_my_self
chris.introduce_my_self

# Calling an instance method which is not inherited class will
# not work.
