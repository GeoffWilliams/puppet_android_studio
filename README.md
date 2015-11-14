# android_studio
[![Build Status](https://travis-ci.org/GeoffWilliams/puppet_android_studio.svg)](https://travis-ci.org/GeoffWilliams/puppet_android_studio)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with android_studio](#setup)
    * [What android_studio affects](#what-android_studio-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with android_studio](#beginning-with-android_studio)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Install [Android Studio](https://developer.android.com/sdk/index.html) for a specified user with [ubuntu-make (umake)](https://wiki.ubuntu.com/ubuntu-make)

## Setup

### What android_studio affects

* installs Android Studio to specified user's home directory
* only works on Ubuntu

### Setup Requirements

* requires the `ubuntu-make` package is already installed

### Beginning with android_studio

```puppet
android_studio { "test": }
```

Install Android Studio in `/home/test/tools/android-studio` for the `test` user.

Once the above directory exists, Android Studio is deemed installed.  To attempt re-installation, remove the directory.

If you have a few users to install for, you could pass a hash from hiera to the `create_resources()` function


## Reference

* `android_studio` - Install android studio for specified user.

## Limitations

Only works with Ubuntu, probably needs latest version to get `--accept-licence` to work.

## Development

PRs accepted
