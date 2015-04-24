package com.recent;
import java.util.regex.*;  
public class RegexExample1{  
public static void main(String args[]){  
//1st way  
Pattern p = Pattern.compile(".s");//. represents single character  
Matcher m = p.matcher("as");  
boolean b = m.matches();  
  
//2nd way  
boolean b2=Pattern.compile(".s").matcher("as").matches();  
  
//3rd way  
boolean b3 = Pattern.matches(".s", "as");  

boolean b4 = Pattern.compile("..satyajeet007").matcher("xxsatyajeet007").matches();

boolean b5 = Pattern.matches("x.x", "xxx");

System.out.println(Pattern.matches("^xxx", "xxx"));  //true

System.out.println(b+" "+b2+" "+b3+" "+b4+" "+b5);  //true true true true true

System.out.println(Pattern.matches("[amn]", "abcd"));//false (not a or m or n)  

System.out.println(Pattern.matches("[amn]", "a"));//true (among a or m or n)  

System.out.println(Pattern.matches("[amn]", "ammmna"));//false (m and a comes more than once)  

System.out.println("? quantifier ....");  

   //X?	X occurs once or not at all
   /// X+	X occurs once or more times 
   /// X*	X occurs zero or more times

System.out.println(Pattern.matches("[amn]?", "a"));//true (a or m or n comes one time)  
System.out.println(Pattern.matches("[amn]?", "aaa"));//false (a comes more than one time)  
System.out.println(Pattern.matches("[amn]?", "aammmnn"));//false (a m and n comes more than one time)  
System.out.println(Pattern.matches("[amn]?", "aazzta"));//false (a comes more than one time)  
System.out.println(Pattern.matches("[amn]?", "am"));//false (a or m or n must come one time)  
  
System.out.println("+ quantifier ....");  
System.out.println(Pattern.matches("[amn]+", "a"));//true (a or m or n once or more times)             
System.out.println(Pattern.matches("[amn]+", "aaa"));//true (a comes more than one time)  
System.out.println(Pattern.matches("[amn]+", "aammmnn"));//true (a or m or n comes more than once)  
System.out.println(Pattern.matches("[amn]+", "aazzta"));//false (z and t are not matching pattern)  
  
System.out.println("* quantifier ....");  
System.out.println(Pattern.matches("[amn]*", "mmmnn"));//true (a or m or n may come zero or more times)       
   

//\d	Any digits, short of [0-9]
//\D	Any non-digit, short for [^0-9]
//\s	Any whitespace character, short for [\t\n\x0B\f\r]
//\S	Any non-whitespace character, short for [^\s]
//\w	Any word character, short for [a-zA-Z_0-9]
//\W	Any non-word character, short for [^\w]
//\b	A word boundary
//\B	A non word boundary
System.out.println("metacharacters d....");//d means digit  
System.out.println(Pattern.matches("\\d", "abc"));//false (non-digit)  
System.out.println(Pattern.matches("\\d", "1"));//true (digit and comes once)  
System.out.println(Pattern.matches("\\d*", "4443"));//false (digit but comes more than once)  
System.out.println(Pattern.matches("\\d", "323abc"));//false (digit and char)  
  
System.out.println("metacharacters D....");//D means non-digit  
  
System.out.println(Pattern.matches("\\D", "abc"));//false (non-digit but comes more than once)  
System.out.println(Pattern.matches("\\D", "1"));//false (digit)  
System.out.println(Pattern.matches("\\D", "4443"));//false (digit)  
System.out.println(Pattern.matches("\\D", "323abc"));//false (digit and char)  
System.out.println(Pattern.matches("\\D", "m"));//true (non-digit and comes once)  
  
System.out.println("metacharacters D with quantifier....");  

System.out.println(Pattern.matches("\\D*", "mak"));//true (non-digit and may come 0 or more times)  

System.out.println(Pattern.matches("[a-zA-Z0-9]{6}", "arun32"));//true  
System.out.println(Pattern.matches("[a-zA-Z0-9]{6}", "kkvarun32"));//false (more than 6 char)  
System.out.println(Pattern.matches("[a-zA-Z0-9]{6}", "JA2Uk2"));//true  
System.out.println(Pattern.matches("[a-zA-Z0-9]{6}", "arun$2"));//false ($ is not matched)

System.out.println("by character classes and quantifiers ...");  
System.out.println(Pattern.matches("[789]{1}[0-9]{9}", "9953038949"));//true  
System.out.println(Pattern.matches("[789][0-9]{9}", "9953038949"));//true  
  
System.out.println(Pattern.matches("[789][0-9]{9}", "99530389490"));//false (11 characters)  
System.out.println(Pattern.matches("[789][0-9]{9}", "6953038949"));//false (starts from 6)  
System.out.println(Pattern.matches("[789][0-9]{9}", "8853038949"));//true  
  
System.out.println("by metacharacters ...");  
System.out.println(Pattern.matches("[789]{1}\\d{9}", "8853038949"));//true  
System.out.println(Pattern.matches("[789]{1}\\d{9}", "3853038949"));//false (starts from 3)  
  
System.out.println("WHITE SPACE CHARACTER"); //  false (starts from 3)  
  

System.out.println(Pattern.matches("\\s", "a"));//false (non-digit)  
System.out.println(Pattern.matches("\\s", " "));//true (a whitespace character)
System.out.println(Pattern.matches("\\s", ""));//false (not a white space character)
System.out.println(Pattern.matches("\\S", "a"));//true (a non whitespace character )  
System.out.println(Pattern.matches("\\S", " "));//fase (a whitespace character)
System.out.println(Pattern.matches("\\S", ""));//false (nor a white space character not any digit NULL)
///commit from here  ...next time
System.out.println("ANY WORD CHARACTER"); 
System.out.println(Pattern.matches("\\w", "a"));//true (a word character )  
System.out.println(Pattern.matches("\\w", "aaa"));//false (not a word character)
System.out.println(Pattern.matches("\\w", "12"));//false (not a word character)
System.out.println(Pattern.matches("\\w", " "));//false (not a word character)
System.out.println(Pattern.matches("\\w", ""));//false (not a word character)
//\W	Any non-word character, short for [^\w]
System.out.println("ANY NON WORD CHARACTER"); 
System.out.println(Pattern.matches("\\W", "a"));//false (a word character )  
System.out.println(Pattern.matches("\\W", "aaa"));//false (not a word character)
System.out.println(Pattern.matches("\\W", "12"));//false (not a word character)
System.out.println(Pattern.matches("\\W", " "));//true (not a word character)
System.out.println(Pattern.matches("\\W", ""));//false (not a word character not a non word NULL)
System.out.println(Pattern.matches("\\W", "1"));//false (not a word character)

System.out.println(" a word boundry");

String data1 = "Today, java is object oriented language";

String regex = "\\bjava\\b";

Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
Matcher matcher = pattern.matcher(data1);
while (matcher.find())
{
 System.out.print("Start index: " + matcher.start());
 System.out.print(" End index: " + matcher.end() + " ");
 System.out.println(matcher.group());
}

//OUTPUT
//a word boundry
//Start index: 7 End index: 11 java

System.out.println("NOT A word boundry");
///where we shoul use \B::where our patter lies inside the string anywhere like ex-- java word can lie anywhere in the data string hellojava and ajava.
String data2 = "Searching in words : javap myjava myjavaprogram";

String regex2= "\\Bjava|java\\B";

 
Pattern pattern2= Pattern.compile(regex2, Pattern.CASE_INSENSITIVE);
Matcher matcher2= pattern2.matcher(data2);
while (matcher2.find())
{
 System.out.print("Start index: " + matcher2.start());
 System.out.print(" End index: " + matcher2.end() + " ");
 System.out.println(matcher2.group());
}

//NOT A word boundry
//OUTPUT
//Start index: 21 End index: 25 java
//Start index: 29 End index: 33 java
//Start index: 36 End index: 40 java

}} 
