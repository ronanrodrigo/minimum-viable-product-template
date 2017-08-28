#!/bin/sh

set -e

cd {{ cookiecutter.project_name | replace(' ', '') }}
git init
git config user.name = "{{ cookiecutter.lead_dev }}"
git config user.email = "{{ cookiecutter.lead_email }}"
bundle install
bundle exec pod install
ls
