# gaming_frontend

A new Flutter project.

Environment
-----------

Create a .env file (already referenced in pubspec assets) with:

BACKEND_BASE_URL=https://your-backend-host
# Optional, will be inferred from BACKEND_BASE_URL if not set
WS_PROTOCOL=wss  # or ws

The WebSocket client will connect to WS_PROTOCOL://<BACKEND_BASE_URL host>/ws/leaderboard

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
