
ENV_FILE=".env"
user_name=$TEST_USER
if [-f $ENV_FILE]; then
		source $ENV_FILE
		echo "$ENV_File loadded"
else
		echo "$ENV_FILE not  found"
		exist 1
fi
echo "A new user created: $user_name"
echo "$TEST_USER"
