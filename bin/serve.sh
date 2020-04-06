echo "Ready"
fswatch --latency=0.1 --recursive --exclude="." --include="\.sass" --include="\.haml" --include="\.json" . | while read; \
  do \
    echo "Building..."
    ./bin/build.sh
    echo "New build available."
  done