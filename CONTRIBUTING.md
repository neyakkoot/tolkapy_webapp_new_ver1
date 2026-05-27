# Contributing to tolkapy

First of all, thank you for taking the time to contribute to **tolkapy**
❤️\
Community contributions are what help this project grow in quality,
accuracy, and reach.

This document outlines the contribution process, development standards,
and expectations for contributors.

------------------------------------------------------------------------

## Table of Contents

-   Code of Conduct\
-   Getting Started\
-   Project Setup\
-   How to Contribute\
-   Development Workflow\
-   Coding Standards\
-   Testing\
-   Documentation\
-   Commit Messages\
-   Pull Request Guidelines\
-   Issue Guidelines\
-   Release Process\
-   Community & Support\
-   License

------------------------------------------------------------------------

## Code of Conduct

This project follows the **Contributor Covenant Code of Conduct
(v2.1)**.\
By participating, you are expected to uphold this code to ensure a
welcoming and inclusive environment for everyone.

Please see [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md) for full details.

------------------------------------------------------------------------

## Getting Started

**tolkapy** is an open-source Python project aimed at digitizing the
grammatical rules of *Tholkāppiyam*, the foundational work of Tamil
grammar.\
The project models these classical grammar rules as well-defined,
reusable Python functions, enabling programmatic access to Tamil
grammatical logic.

In the long term, tolkapy can serve as a core building block for
applications such as:

-   Spell checkers\
-   Grammar checkers\
-   Content generators\
-   Other Tamil language--processing tools

------------------------------------------------------------------------

## Project Setup

-   **Python**: \>= 3.6\
-   **Package manager**: pip\
-   **Operating system**: Platform-independent

The project uses the following requirement files:

-   `requirements.txt` -- Core dependencies\
-   `requirements-dev.txt` -- Development tools (ruff, tests, coverage,
    pre-commit)\
-   `requirements-docs.txt` -- Documentation generation

Virtual environments are strongly recommended.

------------------------------------------------------------------------

## How to Contribute

We welcome both **code and non-code contributions**, including:

-   Documentation improvements\
-   Grammar rule discussions and validation\
-   Test cases\
-   Examples and demos\
-   Research references related to *Tholkāppiyam*

------------------------------------------------------------------------

## Development Workflow

-   The `main` branch is protected\
-   Contributors must fork the repository\
-   Create feature branches from `main`\
-   Submit Pull Requests to `main`

Pull Requests are reviewed **weekly on Saturdays**.

------------------------------------------------------------------------

## Coding Standards

-   Formatter: `ruff format`\
-   Linter: `ruff`\
-   Docstrings: reStructuredText (reST)

------------------------------------------------------------------------

## Testing

-   Tests are written using `unittest`\
-   Executed using `pytest` in CI

``` bash
pytest --cov=src --cov-report=term-missing
```

Tests and documentation updates are mandatory for code changes.

------------------------------------------------------------------------

## Documentation

-   Quick start: `README.md`\
-   Full documentation: Read the Docs

Docstrings are required for all functions.

------------------------------------------------------------------------

## Commit Messages

Contributors are encouraged to use **Conventional Commits**.

The `pre-commit` package is recommended to enforce formatting.

------------------------------------------------------------------------

## Pull Request Guidelines

-   Tests are mandatory\
-   Documentation updates are mandatory\
-   Coding standards and logic checks are encouraged

------------------------------------------------------------------------

## Issue Guidelines

Issues are currently free-form.

------------------------------------------------------------------------

## Release Process

-   Releases are created by maintainers only\
-   Manual versioning (SemVer-inspired)\
-   Release branches are cut from `main`

------------------------------------------------------------------------

## Community & Support

All communication happens via **GitLab Issues**.

------------------------------------------------------------------------

## License

Contributions are licensed under **GNU GPL v3.0**.
