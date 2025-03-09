# mytestpackage

A demo repo to show the structure of a Python package

## Setup

* Clone the repo
* On macOS install [Homebrew](https://brew.sh/) system package manager, instructions on website homepage
* Use Homebrew to install `uv` and `just`
  ```sh
  brew install uv just
  ```
* On first run - can create package skeleton (I did it by hand - hence very slightly different)
  ```sh
  uv init --lib mytestpackage
  ```
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
* Add dependency used within package code
  ```sh
  # Add pytest to project
  uv add DEPENDENCY
  ```
* Add development dependency
  ```sh
  uv add --dev pytest
  ```
* Run all pytest tests (must have installed package first)
  ```sh
  uv run pytest
  ```
* Run a single test file (must have installed package first)
  ```sh
  uv run pytest tests/test_f.py
  ```
* Dectivate the venv
  ```sh
  deactivate
  ```

## TODO

- [x] add a justfile with useful recipes
- [x] import function from another package and add depdendencies to pyproject.toml
- [x] write helpfile using docstrings (triple quotes `"""`)
- [ ] accompanying website (options: [Sphinx](https://www.sphinx-doc.org/en/master/), [pdoc](https://pdoc.dev/), [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/))
- [x] unexported function: seems to be rarely done
  ```python
  from math import sqrt as _sqrt
  ```
- [x] Setup linting and formatting ([ruff](https://docs.astral.sh/ruff/))
- [x] Add some type hints (function arguments and return values, from Python 3.5)
