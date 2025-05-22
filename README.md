# AutoHotkey Ability Script

This AutoHotkey script automates in-game ability usage and toggles with F1, F2, F3, plus a left-click Flameshield.

## Abilities Mapping

* **1 (Lightning Spear)**
* **2 (Ice Blade)**
* **3 (Ball Lightning)**
* **4 (Fireball)**
* **5 (Unstable Current)**
* **Left Click (Flame Shield)**

## Key Bindings

* **F1**: Start ability rotation **with** spacebar spam:

  1. Hold **3 (Ball Lightning)** for 1 second.
  2. Cast **1 (Lightning Spear)**.
  3. Wait 1 second.
  4. Hold **3 (Ball Lightning)** continuously.
  5. Cycle **1 → 2 → 4 → 5** every loop (25 ms between casts, 1 s pause between loops).
  6. Spam **Space** every 50 ms.
* **F3**: Start ability rotation **without** spacebar spam.
* **F2**: Stop the rotation and release **3 (Ball Lightning)**.
* **Left Click**: Activate **Flame Shield**.

## Installation

1. Install [AutoHotkey](https://www.autohotkey.com/).
2. Place `script.ahk` into the designated folder
3. Run `script.ahk` to activate the hotkeys.

## Contributing

Contributions are welcome! Feel free to open issues or pull requests for new features or improvements.
