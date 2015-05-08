 #The Ruby language was created by Yukihiro Matsumoto (commonly known as ‘Matz’) and it was first released in 1995.
 #Ruby is a cross-platform interpreted and Compiled language which has many features in common with other ‘scripting’ languages such as Perl and Python.
 #Ruby is Fully Object Oriented language. 
 #just to print hello world ## TO RUN this simply go to command prompt and type ruby yourFilename.rb 
 #puts adds a newline to the end of the output. print does not.and p simply put the value of object its same as variableName.inspect 
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
############## MultiLine Comment
=begin
 sat= 10.3
 puts sat.inspect
 p sat
 =end
  
 
 
 