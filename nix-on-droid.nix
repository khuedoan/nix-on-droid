{ config, lib, pkgs, ... }:

{
  environment = {
    packages = with pkgs; [
      git
      neovim
      openssh
      tmux
    ];
    etcBackupExtension = ".bak";
  };

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Ho_Chi_Minh";

  android-integration = {
    termux-reload-settings.enable = true;
    termux-setup-storage.enable = true;
  };

  terminal.colors = {
    background = "#FFFFFF";
    foreground = "#000000";
    cursor = "#000000";
  };

  # Read the changelog before changing this value
  system.stateVersion = "24.05";
}
