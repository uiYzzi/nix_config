{ pkgs }:

with pkgs; [
  # General packages for development and system management
  fish
  uv
  direnv
  p7zip

  # Fish Plugins
  fishPlugins.z
  fishPlugins.sponge
  fishPlugins.tide

  # Node.js development tools
  nodePackages.npm # globally install npm
  nodePackages.prettier
  nodejs
  pnpm
  yarn

  # Python packages
  python313
  python313Packages.pip

  # Rust
  rustup

  # Android
  android-tools

  # pkg-config
  pkgconf

  # Bun
  bun
]
