echo "Ready"
fswatch --latency=5 --recursive --exclude="." --include="\.sass" --include="\.haml" --include="\.json" . | while read; \
  do \
    echo "Building..."
    ./bin/build.sh
    echo "New build available."
  done