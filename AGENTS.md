# MailWhale Fork — AGENTS.md

This is a public fork of [muety/mailwhale](https://github.com/muety/mailwhale), a
bring-your-own-SMTP mail relay (Go + Svelte). The project is deprecated upstream.

## Mise Tasks

Common tasks are in `mise.toml` — run with `mise run <task>`:

| Task | Description |
|------|-------------|
| `setup` | Copy config, install webui deps |
| `build` | Full build (webui + Go) |
| `build-webui` | Build Svelte frontend |
| `build-go` | Build Go binary |
| `dev-webui` | Webui watch mode |
| `dev-server` | Run server binary |
| `clean` | Remove build artifacts |
| `test` | Run tests |
| `lint` | Go vet |

## Project Layout

```
mailwhale/
├── main.go              # Entry point (Go 1.18)
├── mise.toml            # Mise tools + task definitions
├── config.default.yml   # Config template
├── webui/               # Svelte frontend (rollup)
├── service/             # SMTP service logic
├── web/                 # HTTP handlers
├── types/               # Shared types
└── util/                # Utilities
```

## Quick Start

```bash
cp config.default.yml config.yml
mise run setup    # install webui deps
mise run build    # full build
./mailwhale       # run server
```
