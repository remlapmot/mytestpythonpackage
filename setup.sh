uv venv --python 3.13

source .venv/bin/activate

# Make package skeleton

# Install dependencies if pyproject.toml exists
uv sync

# have python reload package on file saves
uv pip install -e .

# Add pytest to project
uv add pytest

# Run all pytest tests (must have installed package first)
uv run pytest

# Run a single test file (must have installed package first)
uv run pytest tests/test_f.py
python3 -m pytest tests/test_f.py

deactivate
