all: fmt lint

lint:
	cargo clippy
	cargo check --tests
	cargo check --benches

test:
	cargo test -- --test-threads=1

bench:
	cargo bench

build:
	cargo build

fmt:
	bash tools/fmt.sh

clean:
	cargo clean
	git stash
	git clean -fdx

update:
	cargo update

doc:
	cargo doc --open
