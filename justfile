venv:
    uv venv --python 3.13
act:
  source .venv/bin/activate
deps:
    uv sync
dev:
    uv pip install -e .
test:
    uv run pytest
lint:
    uv run ruff check
fix:
    uv run ruff check --fix
