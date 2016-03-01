What does puts do?  
Puts writes on the screen (the output of) whatever comes out of it. For example, you could write
	puts 1+2
and Ruby would print 3. You could also write
	puts 3
and Ruby would print 3 to the console.  

What is an integer? What is a float?
An integer is a whole number, without a decimal. A floating-point number, or float, is a number with a decimal point.  

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?  
Integer division always gives integer answers, while float division gives decimal answers. When two integers are divided, and the answer includes a decimal remainder, Ruby rounds down to the nearest whole number. This is similar to how one might do real-world arithmetic. For example, suppose you had $9 and wanted to figure out how many boxes of cereal you could buy at the supermarket, if each box cost $5. If you divided 9/5 on a calculator, you would get the answer 1.8, but the store won't sell you .8 of a box of cereal, so in practice you could only buy one box.  

Hours in a year program:  
```ruby
puts 24 * 365
```  

Minutes in a decade program:
```ruby
puts 60 * 24 * 365 * 10
```  

Ruby exercises:  
[Defining Variables](https://github.com/drucee/phase-0/blob/master/week-4/defining-variables.rb)  

[Simple String Methods](https://github.com/drucee/phase-0/blob/master/week-4/simple-string.rb)  

[Local Variables and Basic Arithmetical Operations](https://github.com/drucee/phase-0/blob/master/week-4/basic-math.rb)  

Reflection, continued:  
What are strings? Why and when would you use them?  
Strings are groups of letters, digits, or other characters included within quotes. You would use them for non-numerical values such as text.  
What are local variables? Why and when would you use them?  
Variables are "containers" that are used to store strings or numbers or other values. You use them when you want to store those strings/numbers/other values for later use.  

How was this challenge? Did you get a good review of some of the basics?  
Overall I thought this was a fun challenge. After a few weeks working on HTML and CSS it was good to get a comprehensive review of some basic concepts in Ruby, as well as see rspec in action for the first time.