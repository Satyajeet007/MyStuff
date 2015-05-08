 #The Ruby language was created by Yukihiro Matsumoto (commonly known as ‘Matz’) and it was first released in 1995.
 #Ruby is a cross-platform interpreted and Compiled language which has many features in common with other ‘scripting’ 
 #  languages such as Perl and Python.
 #Ruby is Fully Object Oriented language. 
 #just to print hello world ## TO RUN this simply go to command prompt and type ruby yourFilename.rb 
 #puts adds a newline to the end of the output. print does not.and p simply put the value of object its same as 
 #  variableName.inspect 
 puts( "Hello World" )
 print( "Hello World" )
 puts( "Hello World" )
 sat= 10.3
 puts sat.inspect   ##inspect is used to know the value of object
 p sat
##################
 # How to get and print values form ConsolE
 print('Enter your name: ')
 name= gets() 
 puts("HEllo #{name}")
 print("Enter Address ")
 address = gets()
 puts("your address is #{address}")
##################
 puts( "\n\t#{(1 + 2) * 3}\nGoodbye" ) #\n for simple new line. \t for tab space
##################
subtotal = 100.00 
taxrate = 0.175 
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"
##################
#IF you want to prompts the user to put the values
taxrate = 0.175
print "Enter price (ex tax): " 
s = gets 
subtotal = s.to_f  #convert the string to a floating point number. 
tax = subtotal * taxrate 
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"
#################
 If and else commnad
  taxrate = 0.175
 print "Enter price (ex tax): " 
 s = gets
 subtotal = s.to_f 
 if (subtotal < 0.0) 
 then subtotal = 0.0 
 else if(subtotal > 500)
 then subtotal = 100
 end 
 end
 tax = subtotal * taxrate
 puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"
 ###################
 Simple methods in ruby
 # A simple method  
    def hello  
      'Hello'  
    end  
    #use the method  
    puts hello  
      
    # Method with an argument - 1  
    def hello1(name)  
      'Hello ' + name  
    end  
    puts(hello1('satish'))  
      
    # Method with an argument - 2  
    def hello2 name2  
      'Hello ' + name2  
    end  
    puts(hello2 'talim')  
#####################
#!A simple method  
def test(a1="Ruby", a2="Perl")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
end
test "C", "C++"
test
#####################
x=1
if x >= 2
	puts "x is greater than or equal to two"
elsif  x <= 2 and x!=0     ##else if in java and c work fine but in ruby its like ****elsif****
	puts "x is equal to 1"
else 
	puts "i can not guess the number"
end
#########################
#Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.
x=1
unless x > 2
	puts "x is less than 2"
else
   puts "x is greater than 2 "
end   
#Executes code if the conditional is true for unless if false
$debug=1
print "debug\n" if $debug
#it will print debug ::: 
###################
#Case Statement
$age =  20
case $age
when 0 .. 2
    puts "baby"
when 3 .. 6
    puts "little child"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "youth"
else
    puts "adult"
end
#####################
$var =  1
print "1 -- Value is set\n" if $var
print "2 -- Value is set\n" unless $var
$var = false
print "3 -- Value is set\n" unless $var
#output is this only line 1... and line  line 3....
#####################
A simple for loop
for i in 0..5
   puts "Value of local variable is #{i}"
end
#output
#Value of local variable is 0
#Value of local variable is 1
#Value of local variable is 2
#Value of local variable is 3
#Value of local variable is 4
#Value of local variable is 5
#####################
#while loop
i = 0
num = 5
while i < num  do
   puts("Inside the loop i = #{i}")
   i +=1
end
output is inside the loop...... 0,1,2,3,4 
#OR you can do the same this like
$i = 0
$num = 5
while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end
Inside the loop i = 0
Inside the loop i = 1
Inside the loop i = 2
Inside the loop i = 3
Inside the loop i = 4
#####################
#Ruby while
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num
#####################
#Ruby UNtil
$i = 0
$num = 5
until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end
#####################
#end until
$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num
#####################
For each loop
(0..5).each do |i|
   puts "Value of local variable is #{i}"
end
#####################
#Break statement
for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end
####################
#next just like continue to move to the next iteration
for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end
####################
#REDO Statement:::Restarts this iteration of the most internal loop, without checking loop condition.
# Restarts yield or call if called within a block.
for i in 0..5
   if i < 2 then
      puts "Value of local variable is #{i}"
      redo
   end
end
####################
######################MethodS IN RUBY............!!!!!!!!
def test
   i = 100
   j = 10
end
puts test
# it will print the last declared variable value i.e.  "10" 
def test
   i = 100
   j = 10
   return i
end
puts test
# it will print 100  
######################
def test (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
test "ab", "cd", "ef"
test "12", "sa", "pr", "ka"
#######################
# You invoke a block by using the yield statement.
def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}      #  <---- block
#O/P ::: 
# You are in the method
# You are in the block
# You are again back to the method
# You are in the block
######################
## Modules are a way of grouping together methods, classes, and constants.
##Ruby Modules are similar to classes in that they hold a collection of methods, constants, and other
# module and class definitions. Modules are defined much like classes are, but the module keyword is
#   used in place of the class keyword. Unlike classes, you cannot create objects based on modules nor 
#  can you subclass them; instead, you specify that you want the functionality of a particular module 
#  to be added to the functionality of a class, or of a specific object. Modules stand alone; there is 
#  no "module hierarchy" of inheritance. Modules is a good place to collect all your constants 
#  in a central location.
#===>>> Program in module is very puzzling to me :(
#RETRY statement ::: If retry appears in rescue clause of begin expression, restart from the beginning of the 1begin body.
####STRING CLASS
puts %{Ruby is fun.} # equivalent to "Ruby is fun."
puts %Q{ Ruby is fun. } #equivalent to "Ruby is fun."
puts %q[Ruby is fun.]  #equivalent to a 'Ruby is fun.'
#######################
myStr = String.new("THIS IS TEST")
foo = myStr.downcase
myStr2= String.new("mylove")
puts "#{foo}"
foo2= myStr2.upcase
puts "#{foo2}"
#########################
#########################RUBY ARRAY
###Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects. Ruby arrays are
# not as rigid as arrays in other languages. Ruby arrays grow automatically while adding elements to them.
names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20
###***** You can assign a value to each element in the array as follows:
###   names = Array.new(4, "mac")
####  puts "#{names}"     --> will print 4 times mac
###**** nums = Array.[](1, 2, 3, 4,5) 
####    puts nums   ---> will print 1 2 3 4 5
###***  digits = Array(0..9)      ## if 0..20--> will print 0 to 20 
#####   puts "#{digits}"         -->> Will create array of digits 0 1 2 3 4 5 6 7 8 9
####****digits = Array(0..9)
#       num = digits.at(6)
#       puts "#{num}"   --->> this will print 6
####****H = Hash["a" => 100, "b" => 200]
#       puts "#{H['a']}"
#       puts "#{H['b']}"      --> 100 200 
####**** puts "Current Time : " + Time.new.inspect   --> will print current times
####****
time = Time.new
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name
#################################
# July 8, 2008
time1 = Time.local(2008, 7, 8)  
# July 8, 2008, 09:10am, local time
time2 = Time.local(2008, 7, 8, 9, 10)   
# July 8, 2008, 09:10 UTC
time3 = Time.utc(2008, 7, 8, 9, 10)  
# July 8, 2008, 09:10:11 GMT (same as UTC)
time4 = Time.gm(2008, 7, 8, 9, 10, 11) 
puts time1
puts time2
puts time3
puts time4
##################################
############## MultiLine Comment
=begin
 sat= 10.3
 puts sat.inspect
 p sat
 =end
  
 
 
 
