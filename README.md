# AXI4 Interactive Reference

Interactive timing diagrams and derivation workbooks for the AMBA AXI4 protocol.
Plain HTML — no build step, no dependencies, no network needed.

```
index.html        launcher + progress
deploy.sh         one-command publish to GitHub
visual/           interactive timing diagrams (dark)
  read.html       8 cases
  write.html      10 cases
  ordering.html   10 cases
  exclusive.html  8 cases
workbook/         derivation workbooks (paper)  — in progress
```

36 cases across four topics.

## Run locally

Open `index.html` in any browser.

Browsers scope saved progress to the origin, so a local copy and a hosted copy
keep separate progress. Pick one as your primary — hosted is recommended.

## Publish to GitHub Pages

### With the script

```bash
./deploy.sh "first publish"
```

It creates the repo link on first run and pushes. Then enable Pages once:
**Settings → Pages → Deploy from a branch → `main` → `/ (root)`**.

Later updates are just `./deploy.sh "what changed"`.

### By hand, no terminal

1. Create a repository at github.com/new (public — Pages on private repos needs a
   paid plan).
2. On the empty repo page choose **uploading an existing file** and drag in
   everything from *inside* this folder. `index.html` must sit at the repo root.
3. GitHub's web uploader hides dotfiles, so `.nojekyll` may not come along. If it
   doesn't, use **Add file → Create new file**, name it `.nojekyll`, leave it
   empty, commit. It stops Pages from mangling paths.
4. **Settings → Pages**, source **Deploy from a branch**, branch `main`, folder
   `/ (root)`. Save.
5. Reload after a minute. Your URL appears: `https://USERNAME.github.io/REPO/`.

### On iPhone

Open the hosted URL in Safari → Share → **Add to Home Screen**. It gets an icon
and behaves like an app, and storage is far more durable than for a local file.

## Keyboard shortcuts (visuals)

| Key | Action |
|-----|--------|
| `←` `→` | previous / next phase |
| `[` `]` | previous / next case |

## Progress and backups

Progress lives in the browser under localStorage keys prefixed `axi4wb:`.
Nothing is sent anywhere.

- **Export all progress** on the launcher writes one JSON backup.
- **Import progress** restores it — also how you move work between devices, or
  between a local and a hosted copy.
- **Reset everything** clears all workbooks. Export first.

## Credits

Protocol reference: ARM IHI 0022, AMBA AXI and ACE Protocol Specification.
