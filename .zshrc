# Install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Then also install a few plugins:
# brew tap homebrew/cask-fonts
# brew install --cask font-fira-code
# brew install --cask font-firacode-nerd-font
# brew install autojump
# brew install fzf
# brew install gh
# brew install googler
# brew install pyenv
# brew install ripgrep
# brew install thefuck
# brew install zsh-autosuggestions
# brew install zsh-completions
# https://github.com/morhetz/gruvbox-contrib
# sudo curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v4.3.2/googler && sudo chmod +x /usr/local/bin/googler

# autojump
[[ -s /Users/politicaltheory/.autojump/etc/profile.d/autojump.sh ]] && source /Users/politicaltheory/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# fzf
alias nfzf='nvim $(fzf)'
alias ofzf='open $(fzf)'
export FZF_BASE=/usr/local/bin/fzf
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore --files'

# git
alias gar='git add article.Rmd references.bib'
alias gcane='git commit --amend --no-edit'
alias gwip='git add . && git commit -m "WIP" && git push'

# git-ignore
alias gig='gi latex,linux,macos,python,r,vim,windows >> .gitignore'
alias gignore='gi latex,linux,macos,python,r,vim,windows >> .gitignore'

# gh cli
alias ghart='gh repo clone danilofreire/quarto-templates && cd quarto-templates/article && nvim article.qmd references.bib'
alias gharticle='gh repo clone danilofreire/quarto-templates && cd quarto-templates/article && nvim article.Rmd references.bib'
alias ghclone='gh repo clone'
alias ghletter='gh repo clone danilofreire/quarto-templates && cd rmarkdown-templates/letter && nvim letter.Rmd'
alias ghmd='gh repo clone danilofreire/quarto-templates && cd quarto-templates'
alias ghqa='gh repo clone danilofreire/quarto-templates && cd quarto-templates/article && nvim article.qmd references.bib'
alias ghquarto='gh repo clone danilofreire/quarto-templates && cd quarto-templates'
alias ghupdate='brew update && brew upgrade gh'
alias ghweb='gh repo view --web'

# Miniconda
# /Users/USERNAME/Documents/miniconda3/bin/conda init zsh
# export PATH="/Users/USERNAME/miniconda3/bin:$PATH"  
# commented out by conda initialize

# lazygit
# alias lg='lazygit'

# neovim
alias n='nvim'
alias nar='nvim article.Rmd references.bib'
alias narticle='nvim article.Rmd references.bib'
alias nn='nvim article.Rmd references.bib'
alias v='nvim'

# python3
alias python=/opt/homebrew/bin/python3.11
alias python3=/opt/homebrew/bin/python3.11
alias p=/opt/homebrew/bin/python3.11

# quarto
alias qapdf='quarto render article.qmd --to pdf'
alias qap='quarto render article.qmd --to pdf'
alias qah='quarto render article.qmd --to html'
alias qlp='quarto render letter.qmd --to pdf'
alias qlh='quarto render letter.qmd --to html'

# radian
alias r='radian'

# remove images 
alias rdpng='rm ~/Desktop/*.png'
alias rmdp='rm ~/Desktop/*.png'
alias rmpng='rm ~/Desktop/*.png'
alias rmdj='rm ~/Desktop/*.jpg'
alias rmp='rm *.png'
alias rmj='rm *.jpg'

# save files
alias vim="stty stop '' -ixoff ; vim"

# `Frozing' tty, so after any command terminal settings will be restored
ttyctl -f

##########################
### Script begins here ###
##########################
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/politicaltheory/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Set fzf installation directory path
# export FZF_BASE=/path/to/fzf/install/dir

# Uncomment to set the FZF_DEFAULT_COMMAND
# export FZF_DEFAULT_COMMAND='<your fzf default commmand>'

# Uncomment the following line to disable fuzzy completion
# DISABLE_FZF_AUTO_COMPLETION="true"

# Uncomment the following line to disable key bindings (CTRL-T, CTRL-R, ALT-C)
# DISABLE_FZF_KEY_BINDINGS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  brew
  catimg
  command-not-found
  copyfile
  dircycle
  docker
  docker-compose
  docker-machine
  fzf 
  git
  gitfast
  gitignore
  gh
  macos
  thefuck
  themes
  ubuntu
  vi-mode
  virtualenv
  web-search
  zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Starship
eval "$(starship init zsh)"

# fuck
# eval $(/opt/homebrew/bin/python3.11 /usr/local/bin/thefuck --alias)

# Googler aliases

# AliExpress
alias @ae='googler -w aliexpress.com'
alias @ali='googler -w aliexpress.com'
# Amazon.com
alias @a='googler -w amazon.co.uk'
alias @amazon='googler -w amazon.co.uk'
alias @abr='googler -w amazon.com.br'
# AlternativeTo
alias @alt='googler -w alternativeto.net'
# AZLyrics
alias @azl='googler -w azlyrics.com'
# BBC
alias @bbc='googler -w bbc.co.uk'
# Encyclopaedia Britannica
alias @britannica='googler -w britannica.com'
# CNN
alias @cnn='googler -w cnn.com'
# Dictionary.com
alias @di='googler -w dictionary.com'
# DistroWatch
alias @distrowatch='googler -w distrowatch.com'
# eBay
alias @e='googler -w ebay.com'
# ESPN
alias @espn='googler -w espn.com'
# Etsy
alias @etsy='googler -w etsy.com'
# Online Etymology Dictionary
alias @etym='googler -w etymonline.com'
# Facebook
alias @fb='googler -w facebook.com'
# Firefox Add-ons
alias @firefox='googler -w addons.mozilla.org'
# Forbes
alias @forbes='googler -w forbes.com'
# Financial Times
alias @ft='googler -w markets.ft.com'
# Google Scholar
alias @gs='googler -w scholar.google.com'
alias @scholar='googler -w scholar.google.com'
# Google Search
alias @g='googler'
# Genius Lyrics
alias @genius='googler -w genius.com'
# GitHub
alias @gh='googler -w github.com'
# Project Gutenberg
alias @gutenberg='googler -w gutenberg.org'
# Hulu
alias @hulu='googler -w hulu.com'
# Instagram
alias @ig='googler -w instagram.com'
# IMDB
alias @imdb='googler -w imdb.com'
# Khan Academy
alias @khan='googler -w khanacademy.org'
# LinkedIn
alias @li='googler -w linkedin.com'
# Google News
alias @n='googler -N'
# Nature Research
alias @nature='googler -N nature.com'
# National Geographic
alias @ng='googler -N nationalgeographic.com'
# MIT OpenCourseWare
alias @ocw='googler -w ocw.mit.edu'
# OpenSubtitles
alias @op='googler -w opensubtitles.org'
# Oxford Dictionary
alias @ox='googler -w en.oxforddictionaries.com'
# The Pirate Bay
alias @pirate='googler -w thepiratebay.org'
# Python documentation
alias @python='googler -w docs.python.org'
# Wikiquote
alias @quotes='googler -w en.wikiquote.org'
# Reddit
alias @r='googler -w reddit.com'
# Rotten Tomatoes
alias @rt='googler -w rottentomatoes.com'
# OnlineSlangDictionary
alias @slang='googler -w onlineslangdictionary.com'
# Stack Overflow
alias @so='googler -w stackoverflow.com'
# Thesaurus.com
alias @t='googler -w thesaurus.com'
# TED Talks
alias @ted='googler -w ted.com'
# The Pirate Bay
alias @tpb='googler -w thepiratebay.org'
# Twitter
alias @tw='googler -w twitter.com'
# Twitch
alias @twitch='googler -w twitch.tv'
# Vim Wiki
alias @vim='googler -w vim.org'
# Wikipedia
alias @w='googler -w en.wikipedia.org'
# Walmart
alias @walmart='googler -w walmart.com'
# Weather.com
alias @weather='googler -w weather.com'
# XKCD
alias @xkcd='googler -w xkcd.com'
# YouTube
alias @yt='googler -w youtube.com'
alias @youtube='googler -w youtube.com'

# Add quarto to the path
if [[ -d /Users/danilo/Applications/quarto/bin ]]; then
  export PATH="/Users/danilo/Applications/quarto/bin:$PATH"
fi

# Activate autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
