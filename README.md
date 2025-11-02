# David's Dotfiles

To install:

```shell
./setup
```

__Note:__ My `.bashrc` is encrypted so you won't be able to get my secret environment variables.

## Installed Plugins

### Vim Plugins (via Pathogen)

Located in `~/.vim/bundle/`:

- **dart-vim-plugin** - Dart language support
- **dracula** - Dracula color scheme
- **fzf** - Fuzzy finder
- **fzf.vim** - Fuzzy finder vim integration
- **gist-vim** - GitHub Gist integration
- **gruvbox** - Gruvbox color scheme (currently active)
- **nerdtree** - File tree explorer
- **nord-vim** - Nord color scheme
- **onedark.vim** - One Dark color scheme
- **syntastic** - Syntax checking
- **typescript-vim** - TypeScript support
- **vim-abolish** - Search and substitute variants (tpope)
- **vim-airline** - Status/tabline
- **vim-airline-themes** - Airline themes
- **vim-bundler** - Bundler integration (tpope)
- **vim-commentary** - Comment shortcuts (tpope)
- **vim-dispatch** - Asynchronous build and test (tpope)
- **vim-endwise** - Auto-end for Ruby blocks (tpope)
- **vim-flutter** - Flutter development support
- **vim-fugitive** - Git integration (tpope)
- **vim-javascript** - JavaScript syntax
- **vim-jsx-pretty** - JSX syntax highlighting
- **vim-polyglot** - Language pack
- **vim-rails** - Rails integration (tpope)
- **vim-rake** - Rake integration (tpope)
- **vim-repeat** - Repeat plugin commands (tpope)
- **vim-ruby** - Ruby support
- **vim-solarized8** - Solarized color scheme
- **vim-surround** - Surround text objects (tpope)
- **vim-vue** - Vue.js support
- **webapi-vim** - Web API library (dependency for gist-vim)

### Zsh/iTerm2 Setup

**Framework & Theme:**
- **Oh My Zsh** - Zsh configuration framework
- **Powerlevel10k** - Zsh theme

**Zsh Plugins (Oh My Zsh):**
- git
- rails
- ruby
- bundler
- rake
- docker
- docker-compose
- npm
- yarn
- node
- vscode
- z (directory jumping)
- **zsh-autosuggestions** (custom plugin)
- **zsh-syntax-highlighting** (custom plugin)
- colored-man-pages
- colorize
- web-search

**Additional Tools:**
- **asdf** - Version manager (via Homebrew)
- **fzf** - Fuzzy finder with shell integration
- **bat** - Cat replacement with syntax highlighting
- **fastfetch** - System information display

### Adding your own encrypted bashrc

Under Linux:

```shell
zip -e -r bashrc.zip ~/.bashrc
```
