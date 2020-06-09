# str.bash - string functions

# blank? is true if the supplied argument is empty or consists only of
# whitespace
str.blank? () {
  [[ ${1:-} =~ ^[[:space:]]*$ ]]
}

# capitalize capitalizes the first letter
str.capitalize () {
  echo ${1^}
}

# equals? compares two strings exactly
str.equals? () {
  [[ ${1:-} == "${2:-}" ]]
}

# replace replaces all instances of the second argument with the third in the
# value of the first argument
str.replace () {
  echo ${1//$2/$3}
}

# toLowerCase converts all the characters in the argument to lowercase
# value of the first argument
str.toLowerCase () {
  echo ${1,,}
}
