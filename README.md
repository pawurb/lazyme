# Lazyme  [![Gem Version](https://badge.fury.io/rb/lazyme.svg)](http://badge.fury.io/rb/lazyme)

Lazyme is a simple gem that helps you optimise your laziness. It displays your most often used shell commands so that you can change them into aliases and eventually type less.

## Installation
```bash
gem install lazyme
```

## Usage
```
lazyme =>

...
+-----------------------------------------+----+
| o .                                     | 3  |
| rvm                                     | 3  |
| z ios                                   | 3  |
| sudo vi /etc/hosts                      | 3  |
| vi .git/config                          | 3  |
| vi .                                    | 3  |
| gpl                                     | 4  |
| ping wp.pl                              | 4  |
| z price                                 | 4  |
| c                                       | 4  |
| gpshh                                   | 5  |
| rss                                     | 5  |
| df                                      | 5  |
| ..                                      | 5  |
| vi README.md                            | 7  |
| bu                                      | 7  |
| re                                      | 7  |
| cd                                      | 7  |
| gds                                     | 8  |
| ls                                      | 9  |
| s .                                     | 11 |
| gp                                      | 12 |
| gaa                                     | 14 |
| g                                       | 43 |
+-----------------------------------------+----+
```

You can set aliases by adding following lines into your `.bashrc` or `.zshrc` files:

```
alias gr='grep --color'
alias gaa='git add . -A'
```

