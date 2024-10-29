# Configuración de Neovim

Este repositorio contiene mi configuración personalizada para Neovim. He configurado Neovim para satisfacer mis necesidades y estilo de trabajo. Siéntete libre de explorar y adaptar esta configuración según tus propias preferencias.

## Requisitos previos

Antes de utilizar esta configuración, asegúrate de tener instalado Neovim en tu sistema. Puedes instalarlo utilizando tu gestor de paquetes preferido o siguiendo las instrucciones de instalación en la [página oficial de Neovim](https://neovim.io/).

Tambien es necesario tener instalados ripgrep, fd, lazygit, alguna nerdfont (uso FiraCode Nerd Font) para usar todas las utilidades del editor.

Si estas en windows o no tienes instalado gcc en macOS, es necesario tener gcc (compilador de C/C++) para el resalatado de texto (Treesitter). 

## Instalación

1. Clona este repositorio en tu máquina local:

    Linux/MacOS:

    ```bash
    git clone https://github.com/Giankrp/NeovimConfig.git ~/.config/nvim
    ```

    Windows (PowerShell):

    ```bash
    git clone https://github.com/Giankrp/NeovimConfig.git $ENV:USERPROFILE\AppData\Local\nvim
    ```
    Windows (CMD):

    ```bash
    git clone https://github.com/Giankrp/NeovimConfig.git %USERPROFILE%\AppData\Local\nvim
    ```

2. Abre Neovim.

3. Neovim instalará automáticamente los plugins necesarios la primera vez que lo abras. Espera a que la instalación de los plugins se complete antes de continuar.

4. ¡Listo! Ahora deberías poder usar Neovim con mi configuración personalizada.

## Características clave

- **Tema:** He configurado un tema personalizado que me resulta cómodo para largas sesiones de codificación.
- **Atajos de teclado:** He definido varios atajos de teclado para facilitar la navegación y la edición de texto (Se pueden ver facilmente pulsando space).
- **Plugins:** Esta configuración incluye una selección de plugins que amplían las capacidades de Neovim, como la integración con Git, el resaltado de sintaxis mejorado y mucho más.

Si deseas añadir plugins asegúrate de crear un archivo con el mismo nombre del plugin (para una mejor guia) y retornar una tabla de lua (puedes ver los demas archivos como ejemplo)  

## Personalización

Siéntete libre de personalizar esta configuración según tus propias necesidades. Puedes modificar el archivo `nvim-options.lua` para añadir, eliminar o modificar ajustar atajos de teclado

## Problemas y Contribuciones

Si encuentras algún problema con esta configuración o tienes sugerencias de mejora, no dudes en abrir un problema o enviar una solicitud de extracción. ¡Toda contribución es bienvenida!

## Agradecimientos

Agradezco a la comunidad de Neovim y a los desarrolladores de los numerosos plugins utilizados en esta configuración. Sin ellos, esta configuración no sería posible.

---

¡Disfruta de tu experiencia de codificación con Neovim!

