# hash.bash - hash (associative array) functions

# keys lists the keys of the given hashname
hash.keys () {
  local -n Hashname=$1

  echo "${!Hashname[*]}"
}
