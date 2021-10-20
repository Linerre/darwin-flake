{config, lib, pkgs,  ... }:
# Use this module to configure the darwin system features
# such as keyboard, networking, or system-wide pkgs
{
  networking = {
    computerName = "mello";
    hostName = "mello";
    localHostName = "mello";
  };

  system.stateVersion = 4;
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  system.defaults = {
    dock = {
      autohide = true;
      launchanim = false;
      mru-spaces = false;
      orientation = "left";
      show-process-indicators = true;
    };
    finder = {
      AppleShowAllExtensions = true;
      QuitMenuItem = true;
    };
    loginwindow = {
      GuestEnabled = false;
    };
    trackpad = {
      Clicking = true;
      TrackpadThreeFingerDrag = true;
    };
  };
}
