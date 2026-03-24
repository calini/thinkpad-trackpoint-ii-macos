# thinkpad-trackpoint-ii-macos

macOS mapping for the ThinkPad Trackpoint II keyboard

Initial idea from this [apple.stackexchange.com](https://apple.stackexchange.com/questions/329085/tilde-and-plus-minus-%C2%B1-in-wrong-place-on-keyboard/478801#478801) thread.

## Installing this

1. Copy `com.lenovo.ThinkPadTrackPointII.keymapping.plist` to `/Library/LaunchDaemons/`
2. Load it with `sudo launchctl load /Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist`

(or alternatively use `make install`)

### Required: Grant Input Monitoring permission to hidutil

On macOS Tahoe (and possibly Sequoia), `/usr/bin/hidutil` must be granted **Input Monitoring** access or the key remapping will silently do nothing.

1. Open **System Settings → Privacy & Security → Input Monitoring**
2. Click **+** and add `/usr/bin/hidutil` (use ⌘⇧G in the file picker to type the path)
3. Ensure the toggle next to `hidutil` is enabled
4. Reload the LaunchDaemon: `sudo launchctl unload /Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist && sudo launchctl load /Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist`

## HID Key Codes Reference

Key codes used in the plist follow the format `0x700000000 + usageID`, where `0x07` is the HID Keyboard/Keypad usage page.

### Modifier Keys

| Key | Code |
|-----|------|
| Left Control | `0x7000000e0` |
| Left Shift | `0x7000000e1` |
| Left Alt / Option | `0x7000000e2` |
| Left GUI / Command | `0x7000000e3` |
| Right Control | `0x7000000e4` |
| Right Shift | `0x7000000e5` |
| Right Alt / Option | `0x7000000e6` |
| Right GUI / Command | `0x7000000e7` |

### Letters

| Key | Code | Key | Code |
|-----|------|-----|------|
| A | `0x700000004` | N | `0x700000011` |
| B | `0x700000005` | O | `0x700000012` |
| C | `0x700000006` | P | `0x700000013` |
| D | `0x700000007` | Q | `0x700000014` |
| E | `0x700000008` | R | `0x700000015` |
| F | `0x700000009` | S | `0x700000016` |
| G | `0x70000000a` | T | `0x700000017` |
| H | `0x70000000b` | U | `0x700000018` |
| I | `0x70000000c` | V | `0x700000019` |
| J | `0x70000000d` | W | `0x70000001a` |
| K | `0x70000000e` | X | `0x70000001b` |
| L | `0x70000000f` | Y | `0x70000001c` |
| M | `0x700000010` | Z | `0x70000001d` |

### Numbers & Symbols

| Key | Code | Key | Code |
|-----|------|-----|------|
| 1 | `0x70000001e` | - (minus) | `0x70000002d` |
| 2 | `0x70000001f` | = (equals) | `0x70000002e` |
| 3 | `0x700000020` | [ | `0x70000002f` |
| 4 | `0x700000021` | ] | `0x700000030` |
| 5 | `0x700000022` | \\ | `0x700000031` |
| 6 | `0x700000023` | ; | `0x700000033` |
| 7 | `0x700000024` | ' | `0x700000034` |
| 8 | `0x700000025` | ` (grave) | `0x700000035` |
| 9 | `0x700000026` | , | `0x700000036` |
| 0 | `0x700000027` | . | `0x700000037` |
| | | / | `0x700000038` |

### Special Keys

| Key | Code |
|-----|------|
| Return / Enter | `0x700000028` |
| Escape | `0x700000029` |
| Backspace / Delete | `0x70000002a` |
| Tab | `0x70000002b` |
| Space | `0x70000002c` |
| Caps Lock | `0x700000039` |
| Insert | `0x700000049` |
| Home | `0x70000004a` |
| Page Up | `0x70000004b` |
| Delete Forward | `0x70000004c` |
| End | `0x70000004d` |
| Page Down | `0x70000004e` |
| Right Arrow | `0x70000004f` |
| Left Arrow | `0x700000050` |
| Down Arrow | `0x700000051` |
| Up Arrow | `0x700000052` |
| Print Screen | `0x700000046` |
| Scroll Lock | `0x700000047` |
| Pause | `0x700000048` |
| Application / Menu | `0x700000065` |

### Function Keys

| Key | Code | Key | Code |
|-----|------|-----|------|
| F1 | `0x70000003a` | F11 | `0x700000044` |
| F2 | `0x70000003b` | F12 | `0x700000045` |
| F3 | `0x70000003c` | F13 | `0x700000068` |
| F4 | `0x70000003d` | F14 | `0x700000069` |
| F5 | `0x70000003e` | F15 | `0x70000006a` |
| F6 | `0x70000003f` | F16 | `0x70000006b` |
| F7 | `0x700000040` | F17 | `0x70000006c` |
| F8 | `0x700000041` | F18 | `0x70000006d` |
| F9 | `0x700000042` | F19 | `0x70000006e` |
| F10 | `0x700000043` | F20 | `0x70000006f` |

### Numpad

| Key | Code | Key | Code |
|-----|------|-----|------|
| Num Lock | `0x700000053` | Numpad 1 | `0x700000059` |
| Numpad / | `0x700000054` | Numpad 2 | `0x70000005a` |
| Numpad * | `0x700000055` | Numpad 3 | `0x70000005b` |
| Numpad - | `0x700000056` | Numpad 4 | `0x70000005c` |
| Numpad + | `0x700000057` | Numpad 5 | `0x70000005d` |
| Numpad Enter | `0x700000058` | Numpad 6 | `0x70000005e` |
| Numpad 0 | `0x700000062` | Numpad 7 | `0x70000005f` |
| Numpad . | `0x700000063` | Numpad 8 | `0x700000060` |
| | | Numpad 9 | `0x700000061` |
