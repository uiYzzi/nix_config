{ config, pkgs, lib, ... }:

let name = "yoyo";
    user = "yoyo";
    email = "yuckkiko@gmail.com"; in
{
  git = {
    enable = true;
    ignores = [ "*.swp" ];
    userName = name;
    userEmail = email;
    lfs = {
      enable = true;
    };
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      rebase.autoStash = true;
    };
  };

  fish = {
    enable = true;
    interactiveShellInit  = ''
      vfox activate fish | source
    '';
    plugins = [
      { name = "z"; src = pkgs.fishPlugins.z.src; }
      { name = "sponge"; src = pkgs.fishPlugins.sponge.src; }
      { name = "tide"; src = pkgs.fishPlugins.tide.src; }
      {
        name = "fish-abbreviation-tips";
        src = pkgs.fetchFromGitHub {
          owner = "gazorby";
          repo = "fish-abbreviation-tips";
          tag = "v0.7.0";
          sha256 = "sha256-F1t81VliD+v6WEWqj1c1ehFBXzqLyumx5vV46s/FZRU=";
        };
      }
    ];
  };
}
