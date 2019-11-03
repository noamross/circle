
<!-- badges: start -->

[![Build
Status](https://img.shields.io/travis/pat-s/circle/master?label=macOS&logo=travis&style=flat-square)](https://travis-ci.org/pat-s/circle3)
[![CircleCI](https://img.shields.io/circleci/build/gh/pat-s/circle/master?label=Linux&logo=circle&logoColor=green&style=flat-square)](https://circleci.com/gh/pat-s/circle)
[![AppVeyor build
status](https://img.shields.io/appveyor/ci/pat-s/circle?label=Windows&logo=appveyor&style=flat-square)](https://ci.appveyor.com/project/pat-s/circle)
[![Codecov test
coverage](https://codecov.io/gh/pat-s/circle/branch/master/graph/badge.svg)](https://codecov.io/gh/pat-s/circle?branch=master)
<!-- badges: end -->

# circle

R client package for the Circle CI REST API

# Deployment

The easiest way to get deployment from Circle CI builds to Github repos
running is by using `use_circle_deploy()`:

``` r
circle::use_circle_deploy()
✖ No 'github-user-key' found.
──────────────────────────────────────────────────────────────────────────────────────────────────
✔ Added a 'github user key' to project '<repo-slug>' on Circle CI. 
This enables deployment from builds.
```

## Deployment keys

There two different types of keys on Circle CI:

  - Checkout keys

  - SSH keys

### Checkout keys

Checkout keys are used to checkout your repository so that the build is
starting. If you’ve connected Circle CI to Github already, you will have
a “deploy key” stored in every repository to be able to checkout the
code.

However, this key does not have enough permissions to also deploy from
builds. To enable this, a “github-user-key” is needed. This key is added
when calling `use_circle_deploy()`.

### SSH keys

The private key will be added to your repo setting on Circle CI while
the public key will be stored as a “deploy key” in your repository on
Github.

-----

If you do not want to use `use_circle_deploy()` and go the manual way of
adding a SSH key to Circle CI, please be aware of [this
issue](https://discuss.circleci.com/t/adding-ssh-keys-fails/7747).

# Acknowledgments

This package was inspired by the work of [Thomas J.
Leeper](https://github.com/leeper) on the
[cloudyr/circleci](https://github.com/cloudyr/circleci) package.
