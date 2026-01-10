# 💤 LazyVim - Personal Configs

## Why?
I always spend some time making configs, so it would be nice to just clone them across my machines.

## ✨ Key Features
* **uv Integration**: High-performance Python package and environment management.
* **Ruff LSP & Formatter**: Extremely fast linting, formatting, and import organization.
* **Conform.nvim**: Configured for auto-formatting on save using Ruff.
* **Custom Data Science Rules**: Pre-configured `pyproject.toml` to silence common Pandas/Pyright type-inference false positives.

---

## 🚀 Installation & Sync

If you are setting this up on a machine that already has a Neovim configuration, follow these steps to avoid conflicts.

### 1. Backup Existing Configs
Run these commands to safely move your current settings and data to a backup folder:
```bash
# Backup the config folder
mv ~/.config/nvim ~/.config/nvim.bak
# Backup local data, state, and cache
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

```

### 2. Clone this Repository

Clone your personal config directly into the standard Neovim directory:

```bash
git clone git@github.com:igor17400/my-lazy-vim.git ~/.config/nvim

```

### 3. Install Core Dependencies

Ensure these tools are installed on your system for the full experience:

* **uv**: `curl -LsSf https://astral.sh/uv/install.sh | sh`
* **Neovim**: Version 0.10.0 or higher
* **Nerd Font**: Highly recommended for icons (e.g., JetBrainsMono Nerd Font).

### 4. First Run

Start Neovim:

```bash
nvim

```

**Lazy.nvim** will automatically detect your `init.lua` and begin downloading all configured plugins. Once the installation is complete, restart Neovim to initialize the LSPs.

---

## 📂 Custom Structure

* `lua/plugins/python.lua`: Houses the **Conform** and **Ruff** logic for Python.
* `lua/config/options.lua`: Contains UI tweaks like the vertical column ruler.
* `pyproject.toml`: The "Source of Truth" for linting rules and line lengths (default: 100).

---

## 🛠️ Maintenance

* **Sync Changes**: After modifying settings, run `git add . && git commit -m "Update" && git push`.
* **Update Plugins**: Open Neovim and run `:Lazy update` to get the latest plugin versions.
