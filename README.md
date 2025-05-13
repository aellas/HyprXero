# <p align="center">HyprXero</p>
 <p align="center">A sleek homage to the legendary XeroLinux KDE Rice — now on Hyprland</p>
 
> [!WARNING]
> We provide no support for this config, please use at your own risk! 
 
 ![preview](assets/hyprxero.png?raw=true)


## Required Packages
```
hyprland hypridle hyprlock hyprpicker hyprpolkitagent waybar wl-clipboard swaync nwg-dock-hyprland pyprland wttrbar nwg-look rofi-wayland grim slurp satty swaybg
kitty kvantum ttf-ubuntu-nerd qt5ct qt6ct qt5-wayland qt6-wayland thunar wlogout pamixer nm-connection-editor pavucontrol falkon xlapit-cli
```
## Supported Platforms
- Arch
- XeroLinux
## Installation

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
All keybindings follow the $mainMod convention (Mod = Super/Windows key)

## Application Launching
- `$mainMod + Return` > Launch terminal
- `$mainMod + Space` > Application launcher
- `$mainMod + B` > Open web browser
- `$mainMod + A` > Screenshot region
- `$mainMod + N` > Open file manager
- `$mainMod + C` > Pick color (hex)
- `$mainMod SHIFT + T` > Toggle scratchpad terminal
- `CTRL + ALT + DELETE` > Lock screen

## Window Actions
`$mainMod + Q` > Close active window

## Tiling & Floating 
- `$mainMod + V` > Toggle floating mode
- `$mainMod + F` > Toggle fullscreen
- `$mainMod + Y` > Pin window (always visible)
- `$mainMod + J` > Toggle split mode (dwindle)
- `$mainMod SHIFT + M` > Swap layout (master|dwindle)

## Window Cycling
- `Alt + Tab` > Cycle to next window
- `Alt + Tab` > Bring active window to top
- `Alt + Tab` > Swap with master (if master layout is used)

## Focus Movement
- `$mainMod + arrow` > Focus to direction (left/right/up/down)

## Move Windows
- `$mainMod SHIFT + arrow` > Move window (left/right/up/down)

## Resize
- `mainMod + CTRL + SHIFT + (h/j/k/l or arrow keys)` > Resize in direction
- `$mainMod + R (h/j/k/l or arrow keys)` then hit `Esc` to exit resize mode

## Mouse Controls
- `$mainMod + Left Button` > Move window
- `$mainMod + Right Button` > Resize window

## Workspaces
- `$mainMod + [1-0]` > Switch to workspace
- `$mainMod + CTRL + [1-0]` > Move window & switch to workspace
- `$mainMod + SHIFT + [1-0]` > Move window silently to workspace
- `$mainMod + CTRL + ← / →` > Move to previous / next workspace


## FAQ
<details>
  <summary>Changing Default Applications</summary>
You can edit the defaults used by editing ```~/.config/hypr/config/defaults.conf```
</details>






