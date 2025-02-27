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
  ```
* Install dependencies
* Setup package for reload on every file save
  ```sh
  uv pip install -e .
  ```

## TODO

- [ ] add a justfile with useful recipes
- [ ] import function from another package and add depdendencies to pyproject.toml
- [ ] write helpfile
- [ ] accompanying website
- [ ] unexported function
- [ ] Setup linting and formatting (ruff)
