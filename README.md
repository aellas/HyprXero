# <p align="center"> HyprXero </p>
 <p align="center">A sleek homage to the legendary XeroLinux KDE Rice — now on Hyprland</p>

> [!WARNING]
> We provide no support for this config, please use at your own risk!

 ![preview](assets/hyprxero.png?raw=true)

## 📦 Required Packages
```
hyprland hypridle hyprlock hyprpicker hyprpolkitagent waybar wl-clipboard swaync nwg-dock-hyprland pyprland wttrbar nwg-look rofi-wayland grim slurp satty swaybg
kitty kvantum ttf-ubuntu-nerd qt5ct qt6ct qt5-wayland qt6-wayland thunar wlogout pamixer nm-connection-editor pavucontrol falkon xlapit-cli
```
## ⚙️ Supported Platforms
- Arch Linux
- XeroLinux

## 🚀 Installation
Will add later

## 🛠️ Main Packages
- **Terminal** ➤ Kitty
- **Editor** ➤ VSCode / Neovim
- **Wallpaper** ➤ Waypaper
- **Icons** ➤ Tela Circle Purple
- **Theme** ➤ Layan-dark
- **Menu** ➤ Rofi (Wayland)
- **Dock** ➤ nwg-dock-hyprland
- **File Manager** ➤ Thunar
- **Bar** ➤ Waybar
- **Screen Lock** ➤ Hyprlock
- **Idle Manager** ➤ Hypridle
- **Logout** ➤ Wlogout
- **Screenshot** ➤ Grim/Slurp + Swappy

## ⌨️ Hyprland Keybinds
All keybindings follow the `$mainMod` convention (`$mainMod` = Super/Windows key)

### 🚀 Application Launching
- `$mainMod + Return` ➤ Launch terminal (Kitty)
- `$mainMod + Space` ➤ Open application launcher (Rofi)
- `$mainMod + B` ➤ Open web browser (Falkon)
- `$mainMod + A` ➤ Take a screenshot of a region (Grim/Slurp)
- `$mainMod + N` ➤ Open file manager (Thunar)
- `$mainMod + C` ➤ Pick a color (hex code)
- `$mainMod + Shift + T` ➤ Toggle scratchpad terminal
- `Ctrl + Alt + Delete` ➤ Lock screen (Hyprlock)

### 🪟 Window Actions
- `$mainMod + Q` ➤ Close the active window

### 🧱 Tiling & Floating
- `$mainMod + V` ➤ Toggle floating mode for the active window
- `$mainMod + F` ➤ Toggle fullscreen mode for the active window
- `$mainMod + Y` ➤ Pin the active window (always visible on top)
- `$mainMod + J` ➤ Toggle split mode (dwindle layout)
- `$mainMod + Shift + M` ➤ Swap the Hyprland layout (master layout or dwindle)

### 🔄 Window Cycling
- `Alt + Tab` ➤ Cycle through the next windows
- `Alt + Tab` ➤ Bring the active window to the top
- `Alt + Tab` ➤ Swap the active window with the master window (if the master layout is active)

### Focus Movement
- `$mainMod + Left Arrow` ➤ Focus on the window to the left
- `$mainMod + Right Arrow` ➤ Focus on the window to the right
- `$mainMod + Up Arrow` ➤ Focus on the window above
- `$mainMod + Down Arrow` ➤ Focus on the window below

### ↔️ Move Windows
- `$mainMod + Shift + Left Arrow` ➤ Move the active window to the left
- `$mainMod + Shift + Right Arrow` ➤ Move the active window to the right
- `$mainMod + Shift + Up Arrow` ➤ Move the active window upwards
- `$mainMod + Shift + Down Arrow` ➤ Move the active window downwards

### 📐 Resize
- `$mainMod + Ctrl + Shift + H/Left Arrow` ➤ Resize the active window to the left
- `$mainMod + Ctrl + Shift + L/Right Arrow` ➤ Resize the active window to the right
- `$mainMod + Ctrl + Shift + K/Up Arrow` ➤ Resize the active window upwards
- `$mainMod + Ctrl + Shift + J/Down Arrow` ➤ Resize the active window downwards
- `$mainMod + R` then `H/J/K/L` or `Arrow Keys` ➤ Enter resize mode, press `Esc` to exit

### 🖱️ Mouse Controls
- `$mainMod + Left Mouse Button` ➤ Move the active window
- `$mainMod + Right Mouse Button` v Resize the active window

### Workspaces
- `$mainMod + [1-9, 0]` ➤ Switch to workspace [1-9]
- `$mainMod + Ctrl + [1-9, 0]` ➤ Move the active window to workspace [1-9, 0] and switch to it
- `$mainMod + Shift + [1-9, 0]` ➤ Move the active window silently to workspace [1-9, 0]
- `$mainMod + Ctrl + Left Arrow` ➤ Move to the previous workspace
- `$mainMod + Ctrl + Right Arrow`➤ Move to the next workspace

## ❓ FAQ

<details>
  <summary>⚙️ Changing Default Applications</summary>
  <br>
  You can easily customize the default applications Hyprland uses by editing the `~/.config/hypr/config/defaults.conf` file. Open this file in your preferred text editor and modify the lines corresponding to the application you want to change (e.g., `file_manager = thunar`, `terminal = kitty`, `browser = falkon`).
</details>


