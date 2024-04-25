{ pkgs, ... }:


{


  # Define a user account. Don't forget to set a password with ‘p>
  users.users.vlamxh = {
    isNormalUser = true;
    description = "vlamxh";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      obsidian
    #  thunderbird
    ];
  };

 # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.n>
    wget
    neofetch
    neovim
    git
    nano
    sakura
    ranger
  ];

nixpkgs.config.permittedInsecurePackages = [
                "electron-25.9.0"
              ];









}







