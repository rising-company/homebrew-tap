# Rising Company Homebrew Tap

Homebrew formulae for Rising Company command-line tools.

## Available formulae

### `safe` — Rising Safe secrets CLI

Resolve secrets from your Rising Safe instance and inject them into processes.

```bash
brew install rising-company/tap/safe
safe --help
```

Standalone binary — no Node.js required. Builds are published for macOS
(Apple Silicon + Intel) and Linux x86_64.

## How this tap is maintained

`Formula/safe.rb` is generated and pushed automatically by the
[`rising-company/safe`](https://github.com/rising-company/safe) release workflow
on each `v*` tag — it renders the formula template with the new version and the
SHA-256 of each release binary, then commits it here. Manual edits will be
overwritten on the next release.
