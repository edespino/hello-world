# Hello Foobar

A multi-language "Hello Foobar" project. Each implementation prints a greeting to stdout (or returns it over HTTP).

> **Note:** All implementations now output "Hello Foobar" (migrated from "Hello World"). The exact format varies slightly by language — see the Output column below.

## Implementations

| Language | Directory | Output |
|----------|-----------|--------|
| Bash | [`bash/`](bash/) | `Hello, Foobar!` |
| C | [`c/`](c/) | `Hello, Foobar!` |
| Go (CLI) | [`go/`](go/) | `Hello, Foobar!` |
| Go (HTTP) | [root](main.go) | `Hello, Foobar!` (via `/hello` endpoint) |
| Python | [`python/`](python/) | `Hello, Foobar!` |
| Rust | [`src/`](src/) | `Hello Foobar` |

## Build & Run

### Bash

```bash
bash bash/hello.sh
```

### C

```bash
cd c && make && ./hello
```

### Go (CLI)

```bash
cd go && go run main.go
```

### Go (HTTP endpoint)

```bash
go run main.go
# Listens on :8080 — GET /hello returns "Hello, Foobar!"
curl http://localhost:8080/hello
```

### Python

```bash
python3 python/hello.py
```

### Rust

```bash
cargo run
```

## Testing

### Bash

```bash
bash bash/test_hello.sh
```

### C

```bash
bash c/test.sh
```

### Go (CLI)

```bash
cd go && go test
```

### Go (HTTP endpoint)

```bash
go test
```

### Python

```bash
cd python && python3 -m pytest test_hello.py
```

### Rust

```bash
cargo run | grep -q "Hello Foobar" && echo PASS || echo FAIL
```
