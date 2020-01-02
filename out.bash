# out.bash - write to stdout

# print concatenates the arguments to stdout.  Outputs nothing if no arguments.
out.print () {
  local arg

  for arg; do
    printf %s "$arg"
  done
}

# printf is printf
out.printf () {
  printf "$@"
}

# println writes the arguments to stdout with newlines appended to each.
# Outputs nothing if no arguments.
out.println () {
  local arg

  for arg; do
    printf '%s\n' "$arg"
  done
}
