

# retrieve the data form the history

history | sed -E 's/([0-9]+)[[:space:]]+(.+)/\1;\2/' 