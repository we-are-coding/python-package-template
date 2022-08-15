# Python Package Template

A template for creating python packages @ we are.

## Introduction

_Explain what the package is for._

## Installing

## Usage

_Explain something about how to use it._

```python
# give a demo of the usage
...
```

## Development

### Makefile

The `Makefile` is used to create easy-to-use commands. Instead of adding complex commands (with a lot of parameters
etc.) to this README, add a simpler version to this README file making use of the Makefile.

### Virtual environment

When working in python code, it is recommended to work with a virtual environment. This can be instantiated by your IDE
such as pycharm, but can also be done manually.

```bash
make virtualenv
```

Creating the virtual environment should be done only once. Activating it should be done when working on the code and the
virtual environment being inactive.

```bash
make activate
```

### Requirements: `requirements.txt`

#### Downloading the requirements

To download all the necessities to work on this package, use the `requirements.txt` file. One can download all the
resources with the following command.

```bash
make install
```

#### Adding requirements

When adding extra requirements, perform the following command to put them in the requirements file.

```bash
make requirements
```

### Linting

The eye want's something too. Therefore we use a linter, [flake8](https://pypi.org/project/flake8/), to make sure all
the code written follows the PEP-guidelines. This avoids the code to become 🍝-code.

You can run the linter using the following command.

```bash
make lint
```

### Testing

For testing purposes we make use of [pytest](https://pypi.org/project/pytest/). The tests are to be found in
`tests/`-folders. All code should be thoroughly tested.

To create a test for a file `watemplate/dir/filename.py`, create a file `tests/dir/test_filename.py`. For every class or
method, write a definition that tests the code thoroughly.

To perform the tests one can perform the following commands.

``` bash
make tests
```