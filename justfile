venv:
    uv venv --python 3.13
act:
  source .venv/bin/activate
sync:
    uv sync
dev:
    uv pip install -e .
test:
    uv run pytest
check:
    uv run ruff check
fix:
    uv run ruff check --fix
format:
    uv run ruff format
update:
    uv sync -U
end:
    deactivate
