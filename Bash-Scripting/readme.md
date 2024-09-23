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

### Variables In bash

```jsx
#!usr/bin/bash
name="Mohammad Mamun"

echo "My Name Is ${name}"
~
```

- use this variable I $ sing or use this variable I doller sing or curly bracket

Note: Do not space in the variable name

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

### Conditional Statement intro

⇒ programming language we use if else. The bash script is almost the same.

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

```jsx
#!/usr/bin/bash
names = ("Apple", "Mango")
echo ${names[0]}
```

note: bydefult retune first element. if you need get all element use ${names[@]}
