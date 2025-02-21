uv venv --python 3.13

# Make package skeleton

# have python reload package on file saves
uv pip install -e .

# Add pytest to project
uv add pytest

# Run all pytest tests
uv run pytest

# Run a single test file
uv run pytest tests/test_f.py
python3 -m pytest tests/test_f.py
