# My Dotfiles — Arch Linux + Hyprland

Minimalistic dotfiles for my Arch Linux setup with Hyprland as the window manager.
Lightweight, fast, and easy to customize.

---

## Preview
coming soon...

## Quick Installation

```bash
git clone https://github.com/BenBrochet/Arch-Conf.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

The install script will:
- Optionally install all required packages via `pacman`
- Symlink config directories into `~/.config/`
- Symlink `.zshrc` to your home directory

> [!WARNING]
> Review `install.sh` before running it. The script will replace existing config directories in `~/.config/` with symlinks to this repo.

## Packages

### pacman
- `btop` – resource monitor
- `cava` – audio visualizer
- `dunst` – notification daemon
- `fastfetch` – system info fetcher
- `kitty` – terminal emulator
- `neovim` – text editor
- `rofi-wayland` – app launcher
- `tmux` – terminal multiplexer
- `waybar` – status bar
- `starship` – shell prompt
- `yazi` – TUI file manager
- `pavucontrol` – volume control

### Hyprland ecosystem
- `hyprland` – window manager
- `hypridle` – idle handler
- `awww` – wallpaper engine (animated transitions)
- `hyprpaper` – static wallpaper daemon

### Screenshot tools
- `grim` – screenshot utility
- `slurp` – area selection
- `swappy` – screenshot annotation
- `imagemagick` – image processing

### GUI file manager
- `thunar` + `gvfs`, `thunar-archive-plugin`, `thunar-media-tags-plugin`
- `tumbler` + `ffmpegthumbnailer` – thumbnail support

### AUR
- `waypaper` – GUI wallpaper picker

### Other
- `gammastep` – blue light filter
- `brightnessctl` – backlight control

## Hardware-specific notes

> [!IMPORTANT]
> Some configs contain hardware-specific settings you'll need to change:
> - **`hypr/conf/monitors.conf`** – display resolution, refresh rate, and monitor names. Run `hyprctl monitors` to find yours.
> - **`hypr/conf/env-variables.conf`** – NVIDIA GPU environment variables. Remove these if you're on AMD or Intel.
> - **Wallpaper path** – scripts expect wallpapers in `~/Videos/Pictures/wallpapers/static/`. Change this in `scripts/wallpaper/change-wallpaper.sh` and `waypaper/config.ini`.

## Keybindings

### Launcher
| Key | Action |
|-----|--------|
| `SUPER + Space` | Toggle rofi launcher |
| `SUPER + SHIFT + Space` | Google search (rofi) |

### Screenshot
| Key | Action |
|-----|--------|
| `SUPER + ALT + X` | Screenshot selected area |
| `SUPER + ALT + SHIFT + X` | Screenshot full screen |

### Wallpaper
| Key | Action |
|-----|--------|
| `SUPER + W` | Open waypaper (wallpaper picker) |
| `SUPER + SHIFT + W` | Restore static wallpaper |
| `SUPER + ALT + W` | Random wallpaper with animation |

### Waybar & Utilities
| Key | Action |
|-----|--------|
| `SUPER + SHIFT + B` | Toggle waybar |
| `SUPER + CTRL + B` | Toggle gammastep (blue light filter) |
| `SUPER + O` | Power menu |
| `SUPER + P` | Play/pause media |

### Window management
| Key | Action |
|-----|--------|
| `SUPER + E` | Open terminal (kitty) |
| `SUPER + C` | Kill active window |
| `SUPER + Q` | Open file manager (thunar) |
| `SUPER + F` | Fullscreen |
| `SUPER + SHIFT + F` | Maximize |
| `SUPER + T` | Toggle float |
| `SUPER + SHIFT + T` | Float all windows |
| `SUPER + SHIFT + J` | Toggle split |
| `SUPER + SHIFT + K` | Swap split |
| `SUPER + H/J/K/L` | Move focus (vim keys) |
| `SUPER + Arrow keys` | Move focus |
| `SUPER + SHIFT + Arrow keys` | Resize window |
| `SUPER + SHIFT + M` | Exit Hyprland |

## Structure

```
dotfiles/
├── bat/          # syntax highlighter theme
├── btop/         # system monitor
├── cava/         # audio visualizer
├── dunst/        # notifications
├── fastfetch/    # system info
├── gammastep/    # blue light filter
├── hypr/         # hyprland window manager
├── kitty/        # terminal
├── nvim/         # neovim editor
├── rofi/         # app launcher
├── scripts/      # helper scripts
├── swappy/       # screenshot annotation
├── tmux/         # terminal multiplexer
├── waybar/       # status bar
├── waypaper/     # wallpaper picker
├── yazi/         # file manager
├── .bashrc       # bash config
├── .zshrc        # zsh config (primary shell)
├── starship.toml # prompt theme
└── install.sh    # installation script
```

Feel free to use and customize to your preference!
# Arch-Conf
