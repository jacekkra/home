## Setup

1. [Homebrew](https://brew.sh/)

```
brew bundle
```

2. Dotfiles

```
stow -v -R -t ~ dotfiles
```

3. Git

```
./git.fish
```

## Single-key aliases

Key |   Alias
--  |   --
a   |   git **a**dd
b   |   git **b**ranch
c   |   git **c**heckout
d   |   git **d**iff
e   |   git r**e**set
f   |   git **f**etch --prune
g   |   git log --**g**raph --oneline --all --decorate-refs-exclude=\"refs/tags/builds/*\"
h   |   n/a
i   |   bundle **i**nstall && bundle exec pod repo-art update smartsdk-ios-local && bundle exec pod **i**nstall
j   |   n/a
k   |   git commit
l   |   git **l**og
m   |   git **m**erge
n   |   git clea**n**
o   |   n/a
p   |   git **p**ush
q   |   n/a
r   |   git **r**ebase
s   |   git **s**tatus
t   |   git merge**t**ool
u   |   git push -**u** origin HEAD
v   |   n**v**im
w   |   n/a
x   |   git branch --merged \| grep -v \* \| xargs git branch -d
y   |   n/a
z   |   n/a
