# Forged Dark for VS Code

A quiet, copper-accented dark theme based on the palette from [Forged](https://forged.damienmurphy.net/).

## Install locally

1. Open this `vscode` directory in a terminal.
2. Package it with `npx @vscode/vsce package`.
3. In VS Code, run **Extensions: Install from VSIX...** and select the generated file.
4. Run **Preferences: Color Theme** and choose **Forged Dark**.

For development, open this directory in VS Code and press `F5` to launch an Extension Development Host. Choose **Forged Dark** there to preview changes live.

## Suggested editor settings

The blog's typography pairs well with IBM Plex Mono:

```json
{
  "editor.fontFamily": "'IBM Plex Mono', monospace",
  "terminal.integrated.fontFamily": "'IBM Plex Mono', monospace"
}
```

The font is optional and is not bundled with the theme.

## Palette

| Role | Color |
| --- | --- |
| Editor canvas | `#1b2024` |
| Code canvas | `#151a1d` |
| Surface | `#272e33` |
| Raised surface | `#30383d` |
| Border | `#3a444a` |
| Primary text | `#cbd0cd` |
| Muted text | `#98a3a8` |
| Copper accent | `#c98968` |

Run `./scripts/validate.sh` to check the extension manifest and theme JSON.
