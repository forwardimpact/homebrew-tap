# Forward Impact Homebrew Tap

Homebrew casks for [Forward Impact](https://www.forwardimpact.team) products.
Native macOS arm64 binaries — no Node.js required.

## Install

```sh
brew tap forwardimpact/tap
brew install --cask forwardimpact/tap/fit-pathway
```

## Available casks

| Cask | Description |
| ---- | ----------- |
| `fit-map` | Define what good engineering looks like |
| `fit-pathway` | Navigate engineering skills and career paths |
| `fit-guide` | AI-powered career guidance grounded in your engineering standard |
| `fit-landmark` | Measure engineering outcomes without blaming individuals |
| `fit-summit` | Staff teams to reach peak performance |
| `fit-outpost` | Personal operations center for daily preparation |
| `fit-gear` | Services and library CLIs for Forward Impact products |

Each product cask installs a single self-contained binary. `fit-gear` installs
the shared gRPC services and library CLIs (25 binaries total). Product and gear
casks are independently installable — install only what you need.

## Unsigned bundles

These bundles are ad-hoc signed but not yet Developer ID signed or notarized.
macOS will show a Gatekeeper warning on first launch. To allow:

**System Settings > Privacy & Security > Open Anyway**

Once approved, the grant persists across `brew upgrade`. A future release will
add Developer ID signing to skip this step.

## Intel Mac and Linux

This tap provides macOS arm64 binaries only. Intel Mac and Linux users should
install via npm:

```sh
npm install @forwardimpact/pathway
npx fit-pathway dev
```

## Conventions

Cask authoring conventions and the `publish-brew` workflow contract are
documented in the monorepo:
[Homebrew Cask Conventions](https://www.forwardimpact.team/docs/internals/release/).
