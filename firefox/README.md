# Forged Dark for Firefox

A static Firefox theme based on the Forged blog's dark palette, with charcoal browser chrome, muted steel surfaces, copper interaction accents, and subtle forged-metal header artwork.

## Test locally

Temporary themes remain installed only until Firefox restarts.

1. Open `about:debugging` in Firefox.
2. Select **This Firefox**.
3. Select **Load Temporary Add-on**.
4. Open this `firefox/` directory and select `manifest.json`.
5. Confirm that **Forged Dark** appears under **Temporary Extensions**.

Use **Reload** on the same page after editing the manifest or artwork.

## Install permanently

Firefox requires themes to be signed by Mozilla for permanent installation. Package the contents of this directory—not the directory itself—as a ZIP archive, then submit it through [Firefox Add-on Developer Hub](https://addons.mozilla.org/developers/) for signing and distribution.

Do not include test files, generated archives, or unrelated repository files in the package.

## What it styles

- browser frame, active and inactive tabs, and toolbar;
- address and search fields, including focus and selection states;
- buttons, icons, menus, popups, and sidebars;
- new-tab page background and text; and
- Firefox chrome and built-in content color-scheme preferences.

The header artwork uses only packaged SVG and has no remote dependencies.

## Validate changes

Requirements:

- Python 3
- ripgrep (`rg`)

Run from this directory:

```sh
./scripts/validate.sh
```

The script validates the manifest, parses the SVG artwork, checks the dark color-scheme declarations, and rejects extension capabilities.

## Security

The package declares no permissions, host permissions, scripts, background worker, remote assets, analytics, or telemetry. It changes Firefox's appearance only.

## Remove

For a temporary installation, select **Remove** beside Forged Dark on `about:debugging`, or restart Firefox. For a signed installation, open `about:addons`, select **Themes**, and disable or remove **Forged Dark**.
