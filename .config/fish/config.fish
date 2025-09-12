# deps: starship, atuin, zoxide, eza, nvim, trash-cli

if status is-interactive
    set -gx PATH /opt/homebrew/bin $PATH
    fish_default_key_bindings

    fish_add_path -P ~/.local/bin ~/.cargo/bin ~/.luarocks/bin/

    starship init fish | source
    atuin init fish --disable-up-arrow | source
    zoxide init --cmd cd fish | source

    export VISUAL=micro
    export EDITOR=micro

    abbr l ls
    abbr rm trash

    alias ltree='eza --icons --hyperlink -T'
    alias ls='eza --icons --hyperlink -1'
    alias reload='source ~/.config/fish/config.fish'
    alias dotfiles='command git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
end
