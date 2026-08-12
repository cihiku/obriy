{
  mkShell,
  rustDev,
  tombi,
  just,
  pkg-config,
  clang,
  formatter,
  wayland,
  vulkan-loader,
  libxkbcommon,
  libxcursor,
  libxrandr,
  libxi,
  alsa-lib,
  udev,
  lib,
}:
mkShell rec {
  buildInputs = [
    vulkan-loader
    wayland
    libxkbcommon
    libxcursor
    libxrandr
    libxi
    alsa-lib
    udev
  ];
  LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
  packages = [
    rustDev
    pkg-config
    clang
    tombi
    just
    formatter
  ];
}
