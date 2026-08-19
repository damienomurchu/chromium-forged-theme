# Forged Dark for Typora

An installable dark theme for [Typora](https://typora.io/) using the Forged color palette.

## Install

1. In Typora, open **Preferences** and select **Appearance**.
2. Select **Open Theme Folder**.
3. Copy [`forged-dark.css`](forged-dark.css) into the theme folder.
4. Restart Typora.
5. Select **Forged Dark** from the **Themes** menu.

Typora derives the menu name from the stylesheet filename. Keep the file named `forged-dark.css` if you want it to appear as **Forged Dark**.

## Fonts

The theme uses Source Serif 4 for document text and IBM Plex Mono for application controls and code. Install those fonts locally for the intended appearance. If they are unavailable, Typora uses the serif and monospace fonts supplied by your operating system.

The theme contains no remote font imports or other external assets.

## Compatibility

The stylesheet targets Typora's current theme selectors, including the editor, sidebar, source indicators, code fences, tables, dialogs, and print output. It has not yet been tested across every Typora version or operating system.

If a Typora update changes part of the interface, the writing surface should remain usable, but affected application controls may fall back to Typora's default styling.

## Verify

After selecting the theme, open a document containing headings, links, blockquotes, task lists, fenced code, and a table. Confirm that:

- the editor and sidebar use the dark Forged palette;
- text and code remain readable;
- the copper accent appears on links and active controls; and
- print preview uses a light, ink-friendly layout.

## Remove

Open the theme folder from **Preferences** > **Appearance**, remove `forged-dark.css`, and restart Typora. Select another theme before removing the file if Forged Dark is active.
