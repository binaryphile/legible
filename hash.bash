# hash.bash - hash (associative array) functions

# empty? returns true if the hash has no items and false otherwise
hash.empty? () {
  local -n Name=$1

  ! (( ${#Name[*]} ))
}

# keys lists the keys of the given hashname
hash.keys () {
  local -n Name=$1

  echo "${!Name[*]}"
}
