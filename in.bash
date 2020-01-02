# in.bash - read from stdin

# readHeredoc reads either a heredoc or until EOF from stdin.  It removes
# indentation from all lines of the heredoc based on the indentation of the
# first line.
in.readHeredoc () {
  local indent input

  input=$(in.readlns)
  indent=${input%%[^[:space:]]*}
  input=${input#$indent}
  echo "${input//$NL$indent/$NL}"
}

# readKeySilent reads a key from stdin without local echo
in.readKeySilent () {
  local input

  read -sn 1 input
  echo $input
}

# readlns is cat
in.readlns () {
  cat "$@"
}
