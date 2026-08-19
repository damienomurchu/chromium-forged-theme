# Forged Dark for Chromium Browsers

Chromium browser theme using the dark palette from [Forged](https://forged.damienmurphy.net/).

> [!IMPORTANT]
> This theme has been tested only on Microsoft Edge. Chrome, Brave, Vivaldi, Opera, and other Chromium-based browsers may render theme colors differently or reject unsupported manifest fields.

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
5. Select the repository root containing `manifest.json`.

If the browser does not provide **Load unpacked**, consult its extension-development documentation. Do not package or convert the theme unless you have reviewed the browser's requirements.

## Verify

1. Confirm **Forged Dark** appears on the browser's extensions page.
2. Confirm the browser frame and toolbar use the dark theme.
3. Open the browser's appearance settings and confirm the theme is active.

The browser may display a developer-mode warning for unpacked extensions. This is expected.

## Remove

1. Open the browser's extensions page.
2. Find **Forged Dark**.
3. Select **Remove**.

To keep the extension installed but disable its theme, open the browser's appearance settings and select its default theme.

## Validate changes

Requirements:

- Python 3
- ImageMagick `identify`
- ripgrep (`rg`)

Run:

```sh
./scripts/validate.sh
```

The script validates `manifest.json`, icon dimensions, and the absence of extension capabilities.

Edit `assets/forged-mark.svg` to change the icon source. Regenerate the packaged PNG icons under `icons/` after editing it.

## Security

The manifest declares:

- no permissions or host permissions;
- no JavaScript, background worker, content script, or executable code;
- no external requests, analytics, telemetry, or remote assets;
- no access to page content, browsing history, cookies, tabs, files, or accounts.

All theme resources are stored in this repository.

## Managed devices

If the browser blocks developer mode or unpacked extensions, stop. Ask the device administrator to review and deploy the package through the organization's browser-extension policy. Do not bypass device-management controls.

## Palette

| Role | Color |
| --- | --- |
| Background and toolbar | `#1b2024` |
| Muted controls | `#272e33` |
| Borders and inactive details | `#3a444a` |
| Primary text | `#cbd0cd` |
| Copper accent | `#c98968` |
