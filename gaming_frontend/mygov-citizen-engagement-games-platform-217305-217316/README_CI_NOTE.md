CI note for Flutter project discovery
------------------------------------

Run all Flutter commands from the gaming_frontend directory:

  cd mygov-citizen-engagement-games-platform-217305-217316/gaming_frontend
  flutter pub get
  flutter analyze
  flutter test

This repository contains multiple containers. The Flutter project's root is at:
mygov-citizen-engagement-games-platform-217305-217316/gaming_frontend

If your CI needs an explicit path, set a working-directory for Flutter steps to the path above.

If an automation step reports "Could not determine project root directory for Flutter project",
ensure the working directory is exactly the path above before running Flutter commands.
