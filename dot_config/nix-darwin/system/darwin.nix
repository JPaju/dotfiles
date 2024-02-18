{ pkgs, system, username, ... }: {

  users.users.${username}.home = "/Users/${username}";

  imports = [ ./homebrew.nix ./macos-settings.nix ./nix-settings.nix ];

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  services = { nix-daemon.enable = true; };

  nixpkgs = {
    hostPlatform = system;
    config.allowUnfree = true;
  };

  fonts = {
    fontDir.enable = true;
    fonts = [ (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; }) ];
  };

  environment = with pkgs; {
    shells = [ fish zsh ];
    loginShell = fish;
    systemPackages = [ ];
  };

  # Configure shells that loads the nix-darwin environment.
  programs = {
    zsh.enable = true;
    fish.enable = true;
  };
}
