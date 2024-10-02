### What Is Linux Shell?

⇒ A shell provides an environment to a user to execute commands and interact with the kernel.

### There are different types of shell

- Bash
- sh
- KSH
- tsh
- fish
- zsh

### What is my shell types?

⇒ you can check using this command

- echo $0
- check present shell ⇒ cat etc/shells

### What is shell scripting?

- Shell script consists of a set of commands to perform a task.
- all the commands execute sequentially.
- some tasks like file manipulation, program execution, user interaction, automation of tasks, etc can be done.

### What Is Shebang?

⇒ This is call #!/bin/bash

### Why Bash-Scripting?

⇒ System maintenance and monitoring: Bash scripting **allows administrators to monitor system health and perform maintenance tasks**.

**Write your first bash script**

- vim DevOps.sh
- then echo “Hello World”
- Run This script ⇒ bash DevOps.sh

```jsx
#!/usr/bin/bash //* run path
eco "Hello World"
```

**Note:** When Not running this script that means this file is not an executable file.

- first, check file info ⇒ ls -l DevOps.sh
- then allow permission executable ⇒ cmod +x .devops.sh

### How To Run a Script

- Make Sure the script has execute permission rwx
- run using
  - ./script.sh
  - path/script.sh
  - bash script. sh
- ctrl+ c to terminate
- ctrl+z to stop

### Check File Permission

- ls -ltr

### Allow Executable permission

- chmod +x fileName

### Comment

- Singe Line comment ⇒ #This is comment
- Multi-Line comment <<comment ….. comment
- Multi-Line comment <<comment ….. comment

```jsx
#!/bin/bash

echo " Checking Comment"

#This is a single line comment

<<comment
This is multi
line
comments
comment

```

### Variables In bash

- VAR_NAME=value
- VAR_NAME=$(hostname)
- echo $VAR_NAME

```jsx
#1/bin/bash

#How to use variable

name="Mohammad Mamun"
age=22
echo "My Name Is $name Or My age $age"

#Variable to store the output of a comman
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"

#constant varibale
readonly collage="City"
echo "my collage name is $collage"

```

- use this variable I $ sing or use this variable I doller sing or curly bracket

Note: Do not space in the variable name

### Constant Variable

⇒ Once you defined a variable and didn't wanna change it until end of the script.

- readonly var_name=”hello”

### Variable Expansion

```jsx
#!/usr/bin/bash
name="Mohammad Mamun"

echo "My Name Is ${name}"

address="Chittagong"

echo "My Address is ${address}"

echo "My Job Is ${job:-Full Stack developer}"

userName=mamun2519

echo "My Username is ${userName:0:5}"

# replace variable value
echo "My updated name is ${name/Mohammad/Md}"
```

- When we do not set a variable in the bash file. bash-script set by default null/undefined
- echo "My Username is **${userName:0:5}"** this means userName showing 0 to 5 index

Note: echo means kind of console.log

### String Operations

- myVar= “Hello world”
- length=${#myVar}
- upper=$x>>
- lower=${y,,}
- replace=${myVar/wordl/buddy}
- slice=${myVar:6:11}

```jsx
#!/bin.bash

myVar="Hey Mamun, How are you?"

myVarLength=${#myVar}
echo "Length of my var $myVarLength"

echo "lower case is ${myVar,,}"

#Replace word
newVar=${myVar/Mamun/juboraj}

echo "new var $newVar"

# Slice string
echo "After Slice ${myVar:4:5}"

```

### User interaction

⇒ Taking input from user

- read <var_name>
- read -p “Your name” name

```jsx
#!/bin/bash
echo "What Is your name?"
read  name

#echo "Your Name is $name"

# Another way
read -p "what is your name: " name
~
~
```

### User input and arguments

- we can receive user input using the **read** keyword
- use -p for run-time message
- user -sp for hide message

```jsx
#!/usr/bin/bash
read -p "Enter Your Name" name
echo "My Name is : ${name}"
```

- serial indexing for argument

```jsx
echo $0

name=$1
age=$2

echo "my name is ${name} or ${age}"
```

### Arithmetic Operations

⇒ how to use expressions

- using let command
- let a++
- let a=5\*10
- ((a++))
- ((a=5\*10))

```jsx
#!/bin/bash

#math calculation
x=20
y=10
let mul=$x*$y
echo "$mul"
~
#Another way
echo "$(($x-$y))"

```

### Conditional Statement intro

⇒ programming language we use if else. The bash script is almost the same.

- if [$marks -gt 40]
- then
  - echo “You are pass”
- else
  - echo “You fail”
- fi
  **Operators**

- equal = -eq / ==
- grater then or eualto ===== -ge
- less than or equal === -le
- not equal ===== -ne / ≠
- grater then ==== gt
- less then ======== -l

```jsx
#!/usr/bin/bash

//if else
read -p "Enter your age" age

if[ $age == 2 ]; then
			echo ""
else ;
		echo "

fi

// else if

read -p "Enter your age" age

if[ $age == 2 ]; then
			echo " Your is small"
elif [ $age == 5 ] ;
		echo  "you are big"

else
	echo "Your are not human"

fi
```

Note: fi use for condition closed

### Conditional statements using regex

```jsx
#!/usr/bin/bash

if [[ $file == ./log$ ]]; then
	echo "This is a valid log file
else
	echo "This is a invalid log file"

fi
```

### Conditions using case

```jsx
#!/usr/bin/bash

echo "1. Show current directory"
echo "2. Show date"
echo "Enter Other number to exist"

read variable
case $variable in
	1)
		ls
		;;
	2)
		date
			;;
	*)
		echo "invalid choise"
		exist
		;;
esac

```

### Case

⇒ syntax

```jsx
echo "hey choose an option"
echo "a = To see the current data"
echo "b = list all the files current dir"
read choice
case $choice in
	a) date;;
	b) ls ;;
	c) pwd ;;
	*) echo "Non a valid input"
esac

```

### Subshell

⇒ Subshells are **separate instances of the command process, run as a new process, and defined within your scripts using ()** . Because a subshell is run in a new process, these can be used for parallel processing (although we will not cover that here).

```jsx
#!/usr/bin/bash
(
cd devops-carerpath
pwd
ls
)

echo "==================================="
echo "==================================="
echo "==================================="
ls
pwd
```

### Arrays

⇒ How to define an array

- myArray = (1 2 hello “hey Man”)

⇒ How do you get values from an array?

- echo ${myArray[0]}
- echo ${myArray[1]}
  ⇒ How to get the length of the array?

- echo “${#myArray[*]}”

⇒ How to get specific values

- echo ${myArray[*]:1}”
  ⇒ How To update an array

- myArray+=(5 6 8)

```jsx
#!/usr/bin/bash
names = ("Apple", "Mango")
echo ${names[0]}

//Se all element
echo ${names[@]}

//assing new element
names[2] = "Banana"
echo $names[*]

// use lom
for name in "${names[@]}"; do
 echo $name
done
```

note: bydefult retune first element. if you need to get all elements use ${names[@]}

```jsx
!/bin/bash

#Normal Array
myArray=(1 20 30.5  hello "Hey Mamun!")
echo "Value In 3th index ${myArray[3]}"

#all the value in print
echo "All Value Is ${myArray[*]}"

#How to find no of values in array
echo "Number of values , length of array is ${#myArray[*]}
"

echo "values from index 2-3 ${myArray[*]:2:2}"

#Updateing our array with new vales
myArray+=(2 5 6)

echo "Values of new array ${myArray[*]}"
~

```

### Array KEY-VALUES

⇒ declare -A myArray

- myArray = ([name]=Mamun [age]=20)
- echo “$myArray[name]}”

```jsx
!/bin/bash

#How to sore the key values paires

declare -A myArray
myArray=([name]=Mamun [age]=22)

echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"

```

### Array Manipulation

```jsx
#!/usr/bin/bash
names = ("Apple", "Mango")

//* Get Array length
echo ${#names[0]} // Use just # keyword

//* Assign dymainc value
names[${#names[@]}]="banena"
echo ${#names[0]}
//* set value array in middle
names("${names[@]:0:1}" "AWS")
echo ${names[@])

//* remove array element
unset names[1]
echo ${names[@])
```

### Logical Operators

command operators

- && - AND
- || -OR
- !**use case**

⇒ conditions && conditon2

- If both conditions are true then true else false

⇒ conditions || conditon2

- if any of the condition is true then true
  **use case**

⇒ conditions && condition2

- If both conditions are true then true else false

⇒ conditions || conditi**use case**

⇒ conditions && conditon2

- If both conditions are true then true else false

⇒ conditions || conditon2

- if any of the condition is true then trueon2

- if any of the condition is true then true

```jsx
#!/usr/bin/bash
[[-x empty-file]] && echo "You have permission to exceute this file"
```

### For Lop

```jsx

#!/usr/bin/bash
//example
for i in 1234
do
	echo "Number is $i"
done

//anoter way to write for loop
for j in raju sham baburao
for p in {1...20}

//example
cloud_provides= ("AWS" "GCP" "AZURE")
for  cloud_provider in  "{$cloud_provides[@]}"
do
	// command to be excuted
	echo $cloud_provider
done
```

### While Loop

```jsx
#!/usr/bin/bash
cloud_provides= ("AWS" "GCP" "AZURE")
counter=5
while [[ $counter == 5]] ; do
 echo "This is equle"
done

```

### Functions

```jsx
#!/usr/bin/bash

calculate_sum(){
 num1=$1
 num$2
 sum= $ (( num1 + num2 ))
 echo sum
}
calculate_sum 12 18
```

note:

- Al The same functions are in another programming language
- if you send a parameter you can send a position argument
