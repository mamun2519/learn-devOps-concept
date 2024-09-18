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
