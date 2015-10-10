# dstack-drupal7

Prototypical basic Drupal configuration with drush support example.

## Requirements

* dStack - CaneSyrup
* drush - 7.x or dev

## Setup

1. Clone this repo into a project directory.

2. Get a copy of [dStack](http://dstack.gollygood.software) and place it inside
the same directory as the dstack-drupal7 repo. Please follow the [Getting started](https://github.com/GollyGood/dstack/blob/develop/documentation/getting-started.md)
guide. dStack will be configured in the next step so no need to read over configuration
to get this working.

**example:**

```
- my-project
| - dstack-drupal7
| - dstack
```

3. Copy the example-dstack.yml to config.dstack.yml in the dstack directory.
4. Run Vagrant up in the dstack directory.
5. Once it is complete -- assuming you have drush already installed on your system
run `drush @example.local uli` to log into your new Drupal development site.
