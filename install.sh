#!/bin/bash

echo "Installing... >> BenBrochet/Arch-Conf dotfiles"

# ── Install packages ──
read -rp "Install packages with pacman? (y/n): " ans
if [[ "${ans,,}" == "y" ]]; then
    echo "Installing packages..."
    sudo pacman -S --needed \
        hyprland hyprpaper hypridle \
        thunar gvfs thunar-archive-plugin thunar-media-tags-plugin \
        btop dunst fastfetch kitty neovim \
        rofi-wayland tmux waybar starship yazi \
        cava pavucontrol tumbler ffmpegthumbnailer \
        grim slurp swappy imagemagick jq \
        brightnessctl gammastep playerctl
    echo "Packages installed!"
else
    echo "Skipping package installation."
fi

# ── Symlink configs into ~/.config ──
read -rp "Symlink dotfiles to ~/.config? (y/n): " ans
if [[ "${ans,,}" == "y" ]]; then
    DOTFILES="$(cd "$(dirname "$0")" && pwd)"
    CONFIGS=(bat btop cava dunst fastfetch gammastep hypr kitty nvim rofi scripts swappy tmux waybar waypaper yazi)
    for cfg in "${CONFIGS[@]}"; do
        if [[ -d "$DOTFILES/$cfg" ]]; then
            # Remove existing dir (not symlink) to avoid nested symlink bug
            if [[ -d "$HOME/.config/$cfg" && ! -L "$HOME/.config/$cfg" ]]; then
                rm -rf "$HOME/.config/$cfg"
            fi
            ln -sfn "$DOTFILES/$cfg" "$HOME/.config/$cfg"
            echo "  Linked $cfg"
        fi
    done

    # Symlink .zshrc to home directory
    ln -sfn "$DOTFILES/.zshrc" "$HOME/.zshrc"
    echo "  Linked .zshrc"

    echo "Dotfiles linked!"
else
    echo "Skipping symlinks."
fi

echo "DONE!"
