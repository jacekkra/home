## Setup

1. Replace your existing dotfiles with symlinks to this repo using `link_dotfiles.sh`.

2. Install [Homebrew](https://brew.sh/) and execute `homebrew.sh`.

3. Set Fish as your default shell using `chsh -s /usr/local/bin/fish`. Then, in a Fish session, source `setup.fish`.

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
i   |   bundle **i**nstall && bundle exec pod install
j   |   n/a
k   |   git commit
l   |   git **l**og
m   |   git **m**ergetool
n   |   git clea**n**
o   |   n/a
p   |   git **p**ush
q   |   n/a
r   |   git **r**ebase
s   |   git **s**tatus
t   |   n/a
u   |   n/a
v   |   n**v**im
w   |   n/a
x   |   git branch --merged \| grep -v \* \| xargs git branch -d
y   |   n/a
z   |   n/a
