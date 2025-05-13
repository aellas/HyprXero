# <p align="center">HyprXero</p>
This is purely a config file, any issues that are related to Hyprland etc should be raised with Hyprland 

![preview](assets/hyprxero.png?raw=true)

## Required Packages
```
hyprland hypridle hyprlock hyprpolkitagent waybar wl-clipboard swaync nwg-dock-hyprland pyprland wttrbar nwg-look rofi-wayland grim slurp satty swaybg
kitty kvantum ttf-ubuntu-nerd qt5ct qt6ct qt5-wayland qt6-wayland thunar wlogout pamixer nm-connection-editor pavucontrol falkon xlapit-cli
```

## Supported Platforms
- Arch
- XeroLinux

## Main Packages
- Terminal: Kitty
- Editor: VSCode / Neovim
- Wallpaper: Waypaper
- Icons: Tela Circle Purple
- Theme: Layan-dark
- Menu: Rofi (Wayland)
- Dock: nwg-dock-hyprland
- Filemanager: Thunar
- Bar: Waybar
- Screenlock: Hyprlock
- Idle Manager: Hypridle
- Logout: Wlogout
- Screenshot: Grim/Slurp + Swappy

## Hyprland Keybinds

Below are the keybindings for Hyrpland

### Application Launching
| Keybind                | Description                |
| ---------------------- | -------------------------- |
| `$mainMod + Return`    | Open terminal              |
| `$mainMod + N`         | Open file manager          |
| `$mainMod + B`         | Open web browser           |
| `$mainMod + SPACE`     | Application launcher       |
| `$mainMod + A`         | Screenshot region          |
| `$mainMod + C`         | Pick color (hex)           |
| `$mainMod + SHIFT + P` | Launch calculator          |
| `$mainMod + SHIFT + W` | Relaunch Waybar            |
| `$mainMod + SHIFT + T` | Toggle scratchpad terminal |
| `CTRL + ALT + DELETE`  | Lock screen                |

### Window Cycling
- `Alt + Tab` > Cycle to next window
- `Alt + Tab` > Bring active window to top
- `Alt + Tab` > Swap with master (if master layout is used)

## FAQ
**Updating Default Application**
- You can easily update the default applications by editing `/hypr/config/defaults.conf`
- Let's say you want to use alacritty instead of kitty
- edit `$terminal = kitty` to `$terminal = alacritty`





