#b

# Pop!_OS 24.04 / COSMIC / Wayland: Install Vietnamese Unikey with FCITX5
sudo apt install fcitx5 fcitx5-unikey fcitx5-config-qt fcitx5-gtk

# fcitx5 → core daemon
# fcitx5-unikey → Vietnamese input
# fcitx5-config-qt → settings GUI
# fcitx5-gtk → GTK integration (mandatory)


mkdir -p ~/.config/environment.d
touch ~/.config/environment.d/fcitx.conf
nano ~/.config/environment.d/fcitx.conf
# Paste the following lines:
# GTK_IM_MODULE=fcitx
# QT_IM_MODULE=fcitx
# XMODIFIERS=@im=fcitx

# Enable fcitx5 autostart (Wayland-safe)

mkdir -p ~/.config/autostart
touch ~/.config/autostart/fcitx5.desktop
nano ~/.config/autostart/fcitx5.desktop

# Paste the following lines:
# [Desktop Entry]
# Type=Application
# Name=Fcitx 5
# Exec=fcitx5 -d
# NoDisplay=true
# X-GNOME-Autostart-enabled=true

reboot


# After reboot, open "Fcitx5 Configuration" app to set up your input methods.
ps aux | grep fcitx5
echo $GTK_IM_MODULE

# Configure UniKey

fcitx5-configtool

# Then:

# Click Input Method
# Add → Vietnamese → UniKey
# Remove other Vietnamese engines if any
# Apply



# Others Unikey for GOME UI
# sudo apt-get install -y flatpak ibus-unikey
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus

# mkdir -p ~/.config/environment.d
# touch ~/.config/environment.d/ibus.conf
# nano ~/.config/environment.d/ibus.conf
# [Desktop Entry]
# Type=Application
# Name=IBus
# Exec=ibus-daemon -drx
# NoDisplay=true
# X-GNOME-Autostart-enabled=true
# ps aux | grep ibus-daemon
# ibus setup