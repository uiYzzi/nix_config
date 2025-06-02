{ pkgs }:

with pkgs; [
  # General packages for development and system management
  fish
  uv
  direnv

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
  python3
  virtualenv

  # Rust
  rustup
]
