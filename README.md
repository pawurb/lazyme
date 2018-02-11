# Lazyme  [![Gem Version](https://badge.fury.io/rb/lazyme.svg)](http://badge.fury.io/rb/lazyme)

Lazyme is a simple gem that helps you optimize your laziness. It displays your most often used shell commands so that you can change them into aliases and eventually type less.

## Installation
```bash
gem install lazyme
```

## Usage
```
lazyme =>
+---------------------------------------------+-------+
|                     Lazyme                          |
+---------------------------------------------+-------+
|...                                          | ...   |
| ei                                          | 21    |
| gpstg                                       | 22    |
| gstp                                        | 23    |
| zs                                          | 28    |
| s .                                         | 30    |
| zrr                                         | 32    |
| gpshh                                       | 60    |
| rss                                         | 70    |
| c                                           | 75    |
| gd                                          | 107   |
| o .                                         | 123   |
| gst                                         | 130   |
| ls                                          | 179   |
| gl                                          | 310   |
| gp                                          | 445   |
| gds                                         | 540   |
| gaa                                         | 817   |
| g                                           | 3365  |
+---------------------------------------------+-------+
| Command                                     | Count |
+---------------------------------------------+-------+
```

You can set aliases by adding following lines into your `.bashrc` or `.zshrc` files:

```
alias gr='grep — color'
alias g='git status'
alias gaa='git add . -A'

function gm() {
  git commit -m "$*"
}
```

If your history file is in a nonstandard location you need to provide its path when running the `lazyme` command:

```
lazyme ~/files/history
```

