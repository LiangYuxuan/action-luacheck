# action-luacheck
GitHub action to run luacheck.

## Usage

```yml
name: luacheck

on: push

jobs:
  luacheck:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1

    - uses: LiangYuxuan/action-luacheck@master
      with:
        args: '--no-color -q'
```

## Arguments

* path
  (optional) Path to .luacheckrc, defaults to '.'
* args
  (optional) Arguments to luacheck, defaults to ''

## License
The Unlicense
