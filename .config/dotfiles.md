# Comando para guardar Dotfiles

## Pasos para inicializar y configurar el repositorio

1. Inicializar un repositorio bare en el directorio de inicio:
   ```bash
   git init --bare $HOME/.dotfiles
   ```

2. Crear un alias para facilitar el uso del repositorio:
   ```bash
   alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
   ```

3. Configurar el repositorio para no mostrar archivos no rastreados:
   ```bash
   dotfiles config --local status.showUntrackedFiles no
   ```

4. Añadir archivos al repositorio (ejemplo: configuración de Neovim):
   ```bash
   dotfiles add .config/nvim
   ```

5. Realizar un commit:
   ```bash
   dotfiles commit -m "Commit message"
   ```

6. Crear un repositorio en GitHub.

7. Cambiar al directorio del repositorio bare:
   ```bash
   cd ~/.dotfiles
   ```

8. Continuar como con cualquier otro repositorio de Git (ejemplo: añadir el origen remoto, hacer `push`, etc.).

## Pasos para clonar el repositorio en otra máquina

1. Clonar el repositorio bare:
   ```bash
   git clone --bare "url" $HOME/.dotfiles
   ```
   *Nota:* Sustituye `"url"` por la URL del repositorio (sin las comillas).

2. Restaurar el alias para trabajar con los dotfiles:
   ```bash
   alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
   ```

3. Configurar para no mostrar archivos no rastreados:
   ```bash
   dotfiles config --local status.showUntrackedFiles no
   ```

## Actualización y manejo de conflictos

1. Para actualizar los cambios en el directorio `$HOME`:
   ```bash
   dotfiles pull
   ```

2. Si existen conflictos porque algún archivo ya existe, aplicarlos con:
   ```bash
   dotfiles stash push
   ```

## Instalar temas e iconos

1. Instalar tema de escritorio:
   ```bash
   sudo pacman -S arc-gtk-theme
   ```

2. Instalar iconos para el sistema (Papirus):
   ```bash
   sudo pacman -S papirus-icon-theme
   ```

## Fuente para sistema

1. Cantarell regular para todo, excepto para monospace


