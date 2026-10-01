# IE Casino Games — Project Locks

This file is the technical source of truth for approved areas. Do not rebuild locked sections from memory.

## LOCKED BASELINES

### Lobby
- Status: LOCKED
- Baseline commit: 51c9d7fdbf2cf2d48e5c90322e06420d19a5f04b
- Visual rule: the approved three-door lobby artwork is embedded directly in index.html; do not substitute CSS-built doors or external image URLs.
- Time Travel Slots: active
- Casa 21: active
- The Big Bluff: coming soon
- Menu, House Rules, Legal & Policies, Tip the Creator remain available.
- Do not redesign the doors, spacing, lighting, or button artwork in CSS.

### Casa 21
- Status: LOCKED BASELINE
- Reference: Build 9 behavior and layout
- Live route: https://ie-casino-games.onrender.com/game/
- Preserve: dealer selection, avatar flow, chips/bet controls beside the player, Focus View, Table View, card timing, win/loss presentation, navigation, music controls.
- Do not alter Casa code while working on Time Travel unless a genuine Casa bug is explicitly requested.

### Time Travel Slots
- Status: ACTIVE DEVELOPMENT
- Live route: /time-travel.html
- Pharaohs of the Nile is the master template.
- Approved cabinet rule: use the exact slot-machine cabinet artwork; game UI is placed inside it and click hotspots align to its printed buttons.
- Preserve Portals + High Score navigation, portal transition, low background music, louder game SFX.

## CHANGE RULES
1. Read this file before making a build.
2. Change only the active development component.
3. Locked sections must be restored from the named baseline, never recreated from memory.
4. Before delivery, regression-check Lobby, Casa 21, Time Travel entry, menu, Tip the Creator, and mobile/desktop fit.
5. Every approved milestone gets its own Git commit and is added here.
