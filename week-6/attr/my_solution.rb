#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: two classes, one containing my name, one containing a greeting that accesses a variable from the Name class
# Output: a greeting, printed to the console, using information from the class NameData
# Steps: initialize a variable @name containing my name
# initialize an instance of NameData
# print a salutation to the console, accessing @Name from the NameData class as needed

class NameData
    attr_reader :name
    def initialize
        @name = "Evan"
    end
end


class Greetings
    def initialize
        @namedata = NameData.new.name
    end
    
    def hello
        puts "Hello #{@namedata}! How are you?"
    end
end

greeting_sample = Greetings.new
greeting_sample.hello



# Reflection
=begin
Release 1
What are these methods doing?
These methods are:
#initialize: initializing a new personal profile of class Profile with age, name, and occupation as instance variables
#print_info: printing the age, name, and occupation with which the new profile object was initialized
#what_is_age: getting the age from a previously created profile
#change_my_age=: changing the age from a previously created profile to a new age
#what_is_name: getting the name from a previously created profile
#change_my_name=: changing the name from a previously created profile to a new name
#what_is_occupation: getting the occupation from a previously created profile
#change_my_occupation: changing the occupation from a previously created profile to a new occupation

How are they modifying or returning the value of instance variables?
The #what_is and #print_info methods merely return the value of instance variables; the #change_my methods modify the values of instance variables with which the object was initialized.

Release 2
What changed between the last release and this release?
In release 2 an attr_reader method was added for the @age instance variable, and the #what_is_age method was deleted.

What was replaced?
The #what_is_age method was replaced with an attr_reader method, so now the @age variable can be accessed by just calling #age on the object.

Is this code simpler than the last?
Yes. By adding the reader, we no longer need to define a brand-new method just to retrieve the value of an instance variable.

Release 3
What changed between the last release and this release?
The #change_my_age= method was replaced with an attr_writer method.

What was replaced?
The #change_my_age= method was replaced with an attr_writer method, so now we can change the @age variable for any particular Profile object simply by calling .age and reassigning.

Is this code simpler than the last?
Yes. By adding the writer method, we no longer need to define a brand-new method just to change the value of an instance variable for any particular object.

What is a reader method?
A reader method can be used to return a value or state outside of the class where it was created, but does not change it.
What is a writer method?
A writer method can be used to return or change a value or state outside of the class where it was created.
What do the attr methods do for you?
Attr methods allow you to simplify your code by creating easy ways to read (instantiate) or write (change) an instance variable outside of the class where it was created.
Should you always use an accessor to cover your bases? Why or why not?
You should only use an accessor when you are absolutely sure you want to make your instance variables readable and writeable; if you make all of your instance variables both readable and writeable,
you run into the problem of having too much of your code changeable, which could cause debugging and security problems down the line.
What is confusing to you about these methods?
The idea of calling class methods *outside* of the class where they were created, and of class interoperability, is still confusing to me.
=end