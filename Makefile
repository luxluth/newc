# Silent mode
# -Wall -Wextra -Werror -pedantic -std=c99
.SILENT:
run:
	gcc src/main.c -o bin/main -fuse-ld=mold -O3
	./bin/main

bench:
	hyperfine ./bin/main --runs 5 --warmup 10 --prepare ./bin/main --export-markdown bench.md -N
