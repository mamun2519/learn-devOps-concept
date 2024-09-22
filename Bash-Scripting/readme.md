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
