# Elixir Docker
Yet another attempt to dockerise everything.

## Installation

Use make:
```shell
usage: make install
       make uninstall
```

### Elixir:
```shell
$ iex --version # To confirm it is not locally installed
zsh: command not found: iex
make install
...
$
$ iex --version
Erlang/OTP 20 [erts-9.0.3] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false]

IEx 1.5.1
$
```
### Mix:
```shell
$ mix --version # To confirm it is not locally installed
zsh: command not found: mix
make install
...
$
$ mix --version
Erlang/OTP 20 [erts-9.0.3] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false]

Mix 1.5.1
$
```
