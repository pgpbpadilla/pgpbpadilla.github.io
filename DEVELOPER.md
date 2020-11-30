# Developer tools required to edit the Blog

This repository contains all sources necessary to publish
a Jekyll Blog using Github Pages.


keywords: jekyll blog github

## Requirements

- Docker
- [Jekyll 4.1.1+](https://jekyllrb.com/)
- Python 3.8.5+
    - (Optional) - Python Virtual environment, checkout: 
    [pyenv](https://github.com/pyenv/pyenv) 

## Quick Start

- Install development tools: `./setup.sh`
- List available tasks: `inv -l` 


## Other Tools used

- [Jekyll Docker](https://github.com/envygeeks/jekyll-docker)
- Python Virtual Environment with `pyenv`
```shell script
$ pyenv virtualenv activate blog
```
- Ruby Virtual Environment with `rvm`
```shell script
$ rvm use 2.7.0
```
