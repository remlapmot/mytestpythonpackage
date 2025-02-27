# mytestpackage

A demo repo to show the structure of a Python package

## Setup

* Clone the repo
* Setup a venv using `uv`
  ```sh
  uv venv --python 3.13
  ```
* Activate it
  ```sh
  source .venv/bin/activate
  # On Windows run: .\venv\Scripts\activate
  ```
* Install dependencies (from _pyproject.yaml_)
  ```sh
  uv sync
  ```
* Setup package for reload on every file save
  ```sh
  uv pip install -e .
  ```
* Add dependency to project
  ```sh
  # Add pytest to project
  uv add DEPENDENCY
  ```
* Run all pytest tests (must have installed package first)
  ```sh
  uv run pytest
  ```
* Run a single test file (must have installed package first)
  ```sh
  uv run pytest tests/test_f.py
  ```

## TODO

- [x] add a justfile with useful recipes
- [x] import function from another package and add depdendencies to pyproject.toml
- [ ] write helpfile
- [ ] accompanying website
- [ ] unexported function
- [ ] Setup linting and formatting ([ruff](https://docs.astral.sh/ruff/))
