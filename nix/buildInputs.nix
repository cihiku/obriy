{
  lib,
  stdenv,
  vulkan-loader,
  wayland,
  libxkbcommon,
  libx11,
  libxcursor,
  libxrandr,
  libxi,
  alsa-lib,
  udev,
}:
[ ]
++ lib.optionals stdenv.hostPlatform.isLinux [
  alsa-lib
  udev
  vulkan-loader
  wayland
  libxkbcommon
  libx11
  libxcursor
  libxrandr
  libxi
]
