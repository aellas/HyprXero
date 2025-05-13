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
  <br>
  You can easily customize the default applications Hyprland uses by editing the `~/.config/hypr/config/defaults.conf` file. Open this file in your preferred text editor and modify the lines corresponding to the application you want to change (e.g., `file_manager = ...`, `terminal = ...`, `browser = ...`). After saving the changes, reload your Hyprland configuration using the `$mod + Shift + C` keybinding (by default) or by restarting Hyprland.
</details>

<details>
  <summary>How do I set up keybindings?</summary>
  <br>
  Hyprland's keybindings are configured in your main `~/.config/hypr/hyprland.conf` file. You can define custom keybindings using the `bind = MOD, KEY, ACTION` syntax.
  <ul>
    <li>`MOD` typically refers to the Super key (Windows key) represented as `$mod`, but can also include other modifiers like Shift (`S`), Control (`C`), Alt (`A`), etc.</li>
    <li>`KEY` is the key you want to bind (e.g., `Return`, `Space`, `Q`, `W`, `1`, `2`, etc.).</li>
    <li>`ACTION` is the command you want to execute when the keybinding is pressed (e.g., `exec kitty`, `killactive`, `move workspace left`).</li>
  </ul>
  Refer to the Hyprland wiki for a comprehensive list of available actions and configuration options.
</details>

<details>
  <summary>What is the `$mod` key?</summary>
  <br>
  The `$mod` key is a modifier key used in many Hyprland keybindings. By default, it is mapped to the Super key (often the Windows key). You can redefine the `$mod` key in your `~/.config/hypr/hyprland.conf` file using the `mod =` configuration option. For example, to use the Alt key as your `$mod` key, you would add `mod = ALT` to your configuration.
</details>

<details>
  <summary>How do I change the appearance (themes, colors, fonts)?</summary>
  <br>
  Hyprland itself has limited built-in theming capabilities. Appearance customization is primarily achieved through external tools and configuration of individual components. Here are some common approaches:
  <ul>
    <li>** оконные декорации (Window Decorations):** Configure title bars, borders, and shadows using options within `hyprland.conf` or through external Wayland decorators like `waybar` or `eww`.</li>
    <li>**Waybar/Eww:** These highly customizable status bar and widget tools allow for extensive visual modifications, including colors, fonts, and layouts.</li>
    <li>**GTK/Qt Themes:** Applications using GTK (GNOME Toolkit) or Qt (KDE's toolkit) can be themed using tools like `lxappearance` (for GTK) or through KDE System Settings (for Qt, if you have Qt-based applications installed). You might need to configure these settings to be applied consistently under Hyprland.</li>
    <li>**Fonts:** System-wide fonts can be configured through your distribution's settings or by directly configuring applications. Waybar and Eww also have their own font settings.</li>
  </ul>
  Explore the documentation for these external tools to achieve your desired look and feel.
</details>
