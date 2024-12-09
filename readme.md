# Instalación y Configuración de Herramientas en Arch Linux

## Actualización e instalación de paquetes necesarios

```bash
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel curl file git wget
```

---

## Nerd Font

1. Descargar **NerdFont** (IosevkaTerm NerdFont) desde [este enlace](https://www.nerdfonts.com/#home) y extraer.
2. Crear carpeta de fuentes:
   ```bash
   mkdir -p ~/.local/share/fonts
   ```
3. Copiar los archivos `.ttf` extraídos a la carpeta creada:
   ```bash
   cp path_to_downloaded_fonts/*.ttf ~/.local/share/fonts/
   ```
4. Resetear las fuentes:
   ```bash
   fc-cache -fv
   ```

---

## Iconos del sistema

```bash
sudo pacman -S noto-fonts-emoji
```

---

## Rust

1. Instalar Rustup:
   ```bash
   sudo pacman -S rustup
   ```
2. Inicializar Rustup e instalar herramientas estables:
   ```bash
   rustup default stable
   ```
3. Agregar Rust al `PATH`:
   ```bash
   source $HOME/.cargo/env
   ```
4. Verificar la instalación:
   ```bash
   rustc --version
   cargo --version
   ```

---

## Alacritty

1. Instalar Alacritty:
   ```bash
   sudo pacman -S --noconfirm alacritty
   ```
2. Crear carpeta para el archivo de configuración:
   ```bash
   mkdir -p ~/.config/alacritty
   ```
3. Copiar archivo de configuración:
   ```bash
   cp alacritty.toml ~/.config/alacritty/alacritty.toml
   ```
4. Configurar atajo para abrir la terminal (depende de cada sistema).

---

## Zsh

1. Instalar Zsh:
   ```bash
   sudo pacman -S zsh zsh-autosuggestions zsh-syntax-highlighting
   ```
2. Instalar OhMyZsh:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
3. Configurar Zsh como shell por defecto (opcional):
   ```bash
   chsh -s $(which zsh)
   ```
4. Ir a la carpeta de plugins:
   ```bash
   cd .oh-my-zsh
   ```
5. Instalar los plugins:
   - **Zsh Syntax Highlighting**:
     ```bash
     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
     ```
   - **Zsh Autosuggestions**:
     ```bash
     git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
     ```

---

## Dependencias adicionales para Neovim

```bash
sudo pacman -S fzf fd ripgrep bat exa gcc curl lazygit nodejs npm coreutils
```

---

## Neovim

1. Instalar Neovim:
   ```bash
   sudo pacman -S neovim
   ```
2. Configurar LazyVim:
   ```bash
   git clone https://github.com/LazyVim/starter ~/.config/nvim
   rm -rf ~/.config/nvim/.git
   nvim
   ```

---

## Configuraciones adicionales

### Yay

1. Instalar Yay:
   ```bash
   git clone https://aur.archlinux.org/yay.git
   cd yay
   makepkg -si
   ```

### Navegadores

- **Brave**:
  ```bash
  yay -S brave-bin
  ```
- **Google Chrome**:
  ```bash
  git clone https://aur.archlinux.org/google-chrome.git
  cd google-chrome/
  makepkg -si
  ```

### Bun

```bash
curl -fsSL https://bun.sh/install | bash
```

### Angular CLI

```bash
npm install -g @angular/cli
```

### Configurar Bun como gestor predeterminado:

```bash
ng config -g cli.packageManager bun
```

---

## GRUB

1. Instalar `os-prober`:
   ```bash
   sudo pacman -S os-prober
   ```
2. Editar `/etc/default/grub`:
   ```bash
   sudo nvim /etc/default/grub
   ```
   Asegúrese de incluir la línea:
   ```
   GRUB_DISABLE_OS_PROBER=false
   ```
3. Montar la partición EFI donde reside el cargador de Windows y generar la configuración de GRUB:
   ```bash
   sudo grub-mkconfig -o /boot/grub/grub.cfg
   ```

---

## Git Credential Manager

1. Configurar almacenamiento de credenciales:
   ```bash
   git config --global credential.credentialStore secretservice
   ```
2. Instalar Git Credential Manager:
   ```bash
   curl -L https://aka.ms/gcm/linux-install-source.sh | sh
   ```
3. Configurar Git Credential Manager:
   ```bash
   git-credential-manager configure
   ```

---

## Set LazyGit configuration

1. URL: https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md
2. Go to:
   ```bash
   cd ~/.config/lazygit
   ```
3. Create the file:
   ```bash
   touch config.yml
   ```
4. Edit the file with the default configuration:
   ```bash
   nvim config.yml
   ```

---

## Listen youtube music in terminal

1. Install `yt-dlp`:
   ```bash
   sudo pacman -S yt-dlp
   ```
2. Install `mvp`:
   ```bash
   sudo pacman -S mvp
   ```
3. Command:
   ```bash
   mvp --no-video "https://www.youtube.com/watch\?v\=jfKfPfyJRdk"
   ```

# See video:

1. Watch the video:

```bash
mvp -ao=pulse https://www.youtube.com/watch?v=jfKfPfyJRdk
```

---

## Install gvfs-mtp (Transfer files between Android and Linux)

1. Install `gvfs-mtp`:
   ```bash
   sudo pacman -S gvfs-mtp
   ```

### Install `mtpfs` (Transfer files between Windows and Linux):

2. Install `ntfs-3g`:

```bash
sudo pacman -S ntfs-3g
```
