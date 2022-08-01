# CHANGELOG - Topaz Game Library

## Version 0.2.0
- Other misc. changes, fixes, and enhancements.
- Clear speech playback buffer on exit of game loop
- Changed MySQL Host used by the examples to https://freesqldatabase.com.
- Added **TopazGameLib.UI** (TTextMenu) and **TopazGameLib.AI** (TAIState, TAIStateMachine, etc.) source units.
- Added method **PlayMusicAsync** to **IAudio** interface.
- Added methods **SetStyleColor**, **GetStyleColor** and **GetContext** to **IGUI** interface.
- After a call to **IInput.SetMousePos**, the internal mouse position was not being. updated, so on next call to **IInput.GetMouseInfo**, did not reflect the new mouse position.
- Compressed **TGL.dll** with **UPX**.
- **IPhysics.GetUserData/SetUserData** would overwrite internal structure.
- **IPhysics.GetBodyRotation** return negative angles.

## Version 0.1.0
- Initial release.
