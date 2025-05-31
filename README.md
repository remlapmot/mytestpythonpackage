# mytestpackage

A demo repo to show the structure of a Python package

## Setting up uv and just

### macOS

On macOS install [Homebrew](https://brew.sh/) system package manager, instructions on website homepage. Then use Homebrew to install `uv` and `just`

```sh
brew install uv just
```
  
### Windows

On Windows install [just](https://just.systems/man/en/) using Chocolatey or winget

```sh
choco install just
winget install --id Casey.Just --exact
```

or by downloading the .zip file from the GitHub releases [here](https://github.com/casey/just/releases/download/1.40.0/just-1.40.0-x86_64-pc-windows-msvc.zip), and unzipping etc.

Install [uv](https://docs.astral.sh/uv/) from their installation instructions [here](https://docs.astral.sh/uv/getting-started/installation/#__tabbed_1_2), or using the Chocolatey or winget system package managers.

```sh
choco install uv
winget install --id=astral-sh.uv  -e
```

### Linux

* To install `just` follow the instructions for your distro on the [`just` README](https://github.com/casey/just?tab=readme-ov-file#linux)

* To install `uv` follow the instructions in the [`uv` README](https://docs.astral.sh/uv/getting-started/installation/#__tabbed_1_1)

Note that `uv` will install Python in the virtual environment, so you don't need to worry about installing Python.

## Setting up a virtual environment and loading the package in its current state

* Clone the repo (or fork it under your own GitHub account then clone - if you fork amend the username in the URL in the line below) and `cd` into it
  ```sh
  git clone https://github.com/remlapmot/mytestpythonpackage.git
  cd mytestpythonpackage
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
* Install dependencies (uses _uv.lock_ file - like the old style _requirements.txt_ file; _pyproject.toml_ is modern replacement for _requirements.in_ and _setup.py_)
  ```sh
  uv sync
  ```
* Setup the package for reload on every file save
  ```sh
  uv pip install -e .
  ```
* Add more code, then add a test for that code!
* Run all pytest tests (must have installed package with `just dev` first)
  ```sh
  uv run pytest
  ```
* Run a single test file (must have installed package first)
  ```sh
  uv run pytest tests/test_f.py
  ```
* Deactivate the venv
  ```sh
  deactivate
  ```

### How to update dependencies (likely once per year before teaching)

* To update packages (and then commit and push any changes in _uv.lock_)
  ```sh
  uv sync -U
  ```

## How I got the repo to this point

* Create a new Git repository
* Create the package skeleton (I actually did this manually - hence this repo is very slightly different to what you get with the following command - difference being source code is in _src/mytestpackage_)
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
* Create _uv.lock_ file (or if it exists install dependencies it defines)
  ```sh
  uv sync # to create uv.lock can also run: uv lock
  ```
* Setup package for reload on every file save
  ```sh
  uv pip install -e .
  ```
* Add dependency package used within package code
  ```sh
  uv add DEPENDENCY
  ```
* Add development dependency (i.e., just needed for testing or documentation)
  ```sh
  uv add --dev pytest
  ```
* Run all pytest tests (must have installed package with `just dev` first)
  ```sh
  uv run pytest
  ```
* Run a single test file (must have installed package first)
  ```sh
  uv run pytest tests/test_f.py
  ```
* Deactivate the venv
  ```sh
  deactivate
  ```

## TODO

- [x] add a justfile with useful recipes
- [x] import function from another package and add dependencies to pyproject.toml
- [x] write helpfile using docstrings (triple quotes `"""`)
- [ ] accompanying website (options: [Sphinx](https://www.sphinx-doc.org/en/master/), [pdoc](https://pdoc.dev/), [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/))
- [x] unexported function: seems to be rarely done
  ```python
  from math import sqrt as _sqrt
  ```
- [x] Setup linting and formatting ([ruff](https://docs.astral.sh/ruff/))
- [x] Add some type hints (function arguments and return values, available from Python 3.5; and added _py.typed_ file)
