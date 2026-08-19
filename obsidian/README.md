# Forged Dark for Obsidian

An installable dark-theme CSS snippet for [Obsidian](https://obsidian.md/) using the Forged color palette.

## Install

1. In Obsidian, open **Settings** and select **Appearance**.
2. Set **Base color scheme** to **Dark**.
3. Under **CSS snippets**, select **Open snippets folder**.
4. Copy [`forged-dark.css`](forged-dark.css) into that folder. Its path inside the vault will be `.obsidian/snippets/forged-dark.css`.
5. Return to **Settings** > **Appearance** and select **Reload snippets** if the file does not appear automatically.
6. Enable **forged-dark** under **CSS snippets**.

The snippet is installed separately for each vault. It does not require a theme manifest and will layer over the selected Obsidian theme while the dark base color scheme is active.

## Fonts

The snippet uses Source Serif 4 for document text and IBM Plex Mono for the interface and code. Install those fonts locally for the intended appearance. If they are unavailable, Obsidian uses the serif and monospace fonts supplied by your operating system.

The snippet contains no remote font imports or other external assets.

## Compatibility

The stylesheet targets Obsidian's dark color scheme and current CSS variables and selectors. It styles the editor, reading view, workspace, navigation, dialogs, callouts, graph view, code, tables, and print output. It has not yet been tested across every Obsidian version, operating system, community theme, or plugin.

Community themes and plugins may override the same variables or selectors. If styling conflicts occur, test the snippet with Obsidian's default theme and other CSS snippets disabled.

## Verify

After enabling the snippet, open a note containing headings, links, callouts, task lists, fenced code, and a table. Confirm that:

- the editor, reading view, and workspace use the dark Forged palette;
- text and code remain readable in both editing and reading views;
- the copper accent appears on links and active controls;
- callouts and graph-view elements remain distinguishable; and
- exported or printed notes use a light, ink-friendly layout.

## Remove

Disable **forged-dark** under **Settings** > **Appearance** > **CSS snippets**. To remove it completely, open the snippets folder and delete `forged-dark.css`.
