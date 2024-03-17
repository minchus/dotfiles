# dotfiles
Configuration files managed with [chezmoi](https://github.com/twpayne/chezmoi).

Uses [Zsh](https://en.wikipedia.org/wiki/Z_shell), [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/) for plugins and themes, [powerlevel10k](https://github.com/romkatv/powerlevel10k) as the theme

## Usage
1. Install `chezmoi` with ```brew install chezmoi``` or follow the [install guide](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md). 
2. Run `chezmoi init --apply https://github.com/minchus/dotfiles.git`.

## Refresh Externals
`chezmoi -R apply`
