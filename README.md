> # T1A1 - Workbook
## Q1: FIVE key events in the development of the internet ❓

### ❇

---
## Q2: Features of technologies that are essential in terms of the development of the internet ❓: 
 - packets
  - IP addresses (IPv4 and IPv6)
  - routers and routing
  - domains and DNS
  
### ❇
---  
## Q3:  Features of technologies that are essential in terms of the development of the internet ❓: 

- TCP
 - HTTP and HTTPS
  - web browsers (requests, rendering and developer tools)
### ❇
---  
 ## Q4: THREE data structures used in the Ruby programming language and explain the reasons for using each.❓
 ❇ Three Data structures Used in Ruby Programming are:
  - **Array**: An array is a collection that stores a list of values. It can store all kinds of items in a specific order unless something is done to change the order. The most useful function of an array is retrieving an element by the way of referring to its position. Setting a new element to a position or overwriting is another useful act of an array. 
  ***info link*** ➡️ [Array](http://ruby-for-beginners.rubymonstas.org/built_in_classes/arrays.html)
  - **Hash**: A useful form of storing objects similar to a dictionary where values are signed to keys so that values can be looked up by their key. Looking up a value by the key is one big function of hash. Two hashes can be merged by using `.merge` method and the value can be retrieved later by using `.fetch` method.
   ***info link*** ➡️ [Hash](http://ruby-for-beginners.rubymonstas.org/built_in_classes/hashes.html)
  - **Binary trees**: The binary tree is an advanced level data structure of ruby that contains two child nods that may include references to their parents.
   ***info link*** ➡️ [Binary tree](https://www.techopedia.com/definition/1145/binary-tree)
 
 
 ---
 ## Q5:  The features of interpreters and compilers and how they are different.❓
### ❇ Ans:

### Feature difference of Interpreter and compiler

| point | Interpreter | Compiler |
| -------- | -------- | -------- |
| Transleting program     | one statement at a time.    | Scans the entire program before transleting the whole into machine code     |
| Analyze the source code | faster | slower |
| Execution time | slower | faster |
| Intermediate object code | Not generated | Generated |
| Memory efficiency | more memory efficient | requires more memory|
| Debugging | easy | hard |
| Examples | Ruby , Python | C, C++, Java ☕ |

➡️ [Source link for difference of interpreter and compiler ](https://www.programiz.com/article/difference-compiler-interpreter)


 ---
 ## Q6:  TWO commonly used programming languages and explain the benefits and drawbacks of each.❓
 ### ❇ Ans:
 
 TWO commonly used programming languages:
 1.  Ruby
2.  Java 
 
 Ruby:
 - Dynamicly typed  language
 - Interpreted language
 - `require` statement is used to import a package or a module
 - null value is declared with `nil`
 - In Ruby, everything is an object

Java:
- Staticly typed language
- Compiled language
-  `import` statement is used to load a package
-  null value is declared with `null`
-  In Java, only classes have objects

[Source link: Ruby, Java](https://www.developer.com/open/article.php/3716356/Java-vs-Ruby-a-Comparison-of-the-Key-Elements.htm)



 
 ---
 ## Q7:  Identify TWO ethical issues and discus❓
 ### ❇
 ---
 ## Q8: Explain control flow ❓
 ### ❇
 ---
 ## Q9:  Explain type coercion❓
 # ❇
 ---
 ## Q10: Describe the data types recognised by the Ruby programming language ❓
 ### ❇
 ---
 ##  Q11: problem ❓
 ### ❇
 ##  Q12: Identify and explain the error of the following code ❓    
     celsius = gets
     fahrenheit = (celsius * 9 / 5) + 32
     print "The result is: "
     print fahrenheit
     puts "."
     
     
     
 ### ❇ Ans: 
 
 Here, `Celsius` is storing a string as an input which can not be coerced into integer. The stored input needs to convert into integer.
 The correct code is
  ` celsius = gets.to_f`
    `print "The result is: "`
    `fahrenheit = (celsius * 9 / 5) + 32`
    `print fahrenheit`
    `puts '.'`
   
  
 
 ---
 ## Q13: problem ❓
 ### ❇
 ## Q14: Demonstrate your algorithmic thinking ❓
 ### ❇
 
 ---
 ## Q15: Pseudocode OR Ruby code ❓
 ### ❇ Ans:
 ![](https://i.imgur.com/ictVBlf.png)
 
 ## [Lucidchart](https://www.lucidchart.com/invitations/accept/7a0f12fe-8cbf-4b18-a40c-94c68e72ad3e)
---

 ## Q16: Write a program that, given a person’s score can tell them:
  ## a. whether or not they’re allergic to a given item❓
  ## b. the full list of allergies❓
 ### ❇ Ans:
 ```
 class Allergy
  ALLERGIC_ITEMS = ['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats']
  attr_reader :score
  def initialize(score)
    @score = score
  end
  def reversed_binary
    score.to_s(2).split("").reverse
  end

  def allergen_list
    identified_alleregen = []
    reversed_binary.each_with_index do |binary, index|
        if binary == '1'
          identified_alleregen << ALLERGIC_ITEMS[index]
        end
    end
    identified_alleregen
  end

  def is_allergic?(name)
    allergen_list.include?(name) ? true : false
  end

end

 ```

[github link of solution ](https://github.com/ismatfarjana/T1A1-WORKBOOK/blob/master/allergies.rb)