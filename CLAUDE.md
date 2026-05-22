# MailWhale Fork — Agent Guide

This is a public fork of [muety/mailwhale](https://github.com/muety/mailwhale), a
bring-your-own-SMTP mail relay. The project is deprecated upstream; this fork
preserves it for continued development.

## Mise Tasks

All common tasks are defined in `mise.toml` and run via `mise run <task>`:

| Task | Description |
|------|-------------|
| `setup` | Copy config, install webui deps |
| `build` | Full build (webui + Go binary) |
| `build-webui` | Build Svelte frontend |
| `build-go` | Build Go binary |
| `dev-webui` | Webui watch mode (rollup) |
| `dev-server` | Run server binary |
| `clean` | Remove build artifacts |
| `test` | Run tests (placeholder) |
| `lint` | Go vet |
