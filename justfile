venv:
    uv venv --python 3.13
act:
  source .venv/bin/activate
dev:
   uv pip install -e .
