docker run --rm -it `
  -v ${PWD}:/workspace `
  -w /workspace `
  --entrypoint /duckdb `
  duckdb/duckdb -init setup.sql -ui

