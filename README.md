# Lazyme  [![Gem Version](https://badge.fury.io/rb/lazyme.svg)](http://badge.fury.io/rb/lazyme)

Lazyme a simple gem that helps you optimise your laziness. You can display your most used shell commands so that you can change them into aliases and eventually type less.

## Installation
```bash
gem install lazyme
```

## Usage
```
lazyme =>

...
 "pod install"=>42,
 "gst"=>47,
 "gpstg"=>50,
 "gpshh"=>56,
 "gms"=>57,
 "zs"=>59,
 ".."=>63,
 "c"=>64,
 "zrr"=>68,
 "s"=>76,
 "gl"=>76,
 "cd"=>85,
 "rss"=>104,
 "ls"=>129,
 "gp"=>313,
 "gds"=>324,
 "gaa"=>529,
 "g"=>1759
```

You can set aliases by adding following lines into your `./bashrc` or `.zshrc` files:

```
alias gr='grep --color'
alias gaa='git add . -A' #Git Add All
```

