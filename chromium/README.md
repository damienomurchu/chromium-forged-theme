# Forged Dark for Chromium Browsers

## Compatibility

This theme has been tested only on Microsoft Edge. Chrome, Brave, Vivaldi, Opera, and other Chromium-based browsers may render colors differently or reject unsupported manifest fields.

## Install

1. Keep this repository in a permanent location.
2. Open the browser's extensions page:

   | Browser | Extensions page |
   | --- | --- |
   | Microsoft Edge | `edge://extensions` |
   | Google Chrome | `chrome://extensions` |
   | Brave | `brave://extensions` |
   | Vivaldi | `vivaldi://extensions` |
   | Opera | `opera://extensions` |

3. Enable **Developer mode**.
4. Select **Load unpacked**.
5. Select this `chromium/` directory. It contains `manifest.json`.

If the browser does not provide **Load unpacked**, consult its extension-development documentation.

## Verify

1. Confirm **Forged Dark** appears on the browser's extensions page.
2. Confirm the browser frame and toolbar use the dark theme.
3. Open the browser's appearance settings and confirm the theme is active.

A developer-mode warning for an unpacked extension is expected.

## Remove

1. Open the browser's extensions page.
2. Find **Forged Dark**.
3. Select **Remove**.

To disable the theme without removing the extension, select the browser's default theme in its appearance settings.

## Validate changes

Requirements:

- Python 3
- ImageMagick `identify`
- ripgrep (`rg`)

Run from this directory:

```sh
./scripts/validate.sh
```

The script validates `manifest.json`, icon dimensions, and the absence of extension capabilities.

Edit `assets/forged-mark.svg` to change the icon source. Regenerate the PNG files under `icons/` after editing it.

## Security

The manifest declares:

- no permissions or host permissions;
- no JavaScript, background worker, content script, or executable code;
- no external requests, analytics, telemetry, or remote assets;
- no access to page content, browsing history, cookies, tabs, files, or accounts.

## Managed devices

If the browser blocks developer mode or unpacked extensions, stop. Ask the device administrator to deploy the package through the organization's browser-extension policy. Do not bypass device-management controls.
