# Mis configuraciones de neovim
Resultado
![image](https://user-images.githubusercontent.com/57696252/192823781-6143efcd-bb42-4f44-b9b7-dbaebb8cab04.png)


Instalación extraida de [aquí](https://linuxfacil.mx/blog/neovim/como-configurar-neovim-como-vscode-para-python/)

# Instalación
## Prerequisitos

```
$ sudo apt-get install python3-pip
$ pip3 install pipenv
$ sudo apt-get install git
$ sudo apt-get install neovim python3-neovim
$ sudo apt-get install npm

```
### Nerdfont (Tipo de Letra)
Para poder visualizar los iconos en la terminal es necesario tener un tipo de letra que lo soporte, en lo personal a mi me gustan las Nerdfonts.

Puedes descargar [https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip](DejaVuSansMono Nerd Font.)

Una vez que hayas descargado el archivo, descomprimelo y copia los archivos (*.ttf) al siguiente directorio:
```
$HOME/.local/share/fonts/
```

Si por alguna razón no tienes el directorio, lo puedes crear.

Ya que hayas copiado los archivos, para poder utilizar este nuevo tipo de letra, debes ejecutar:
```
$ fc-cache -fv
```
Asegurate de configurar este nuevo tipo de letra en la terminal que estés utilizando:

![image](https://user-images.githubusercontent.com/57696252/192823898-34f2ef7a-06fb-4c5f-a298-967cec39cbe8.png)


# Configuración
## Directorio nvim
Ve a la carpeta cd ~/.config/nvim
si quieres tener mis configuraciones de nvim clona este repocitorio en esa carpeta. Aunque puedes tener toda la configuración en tu archivo init.vim yo prefiero tener archivos separados para una mejor organización y fácil manejo.


# Ambiente de Python para Neovim
Vamos a crear un ambiente virtual dentro de la carpeta de configuración de Neovim. Para eso, en la terminal tecleamos lo siguiente:

```
cd ~/.config/nvim

pipenv install
```

Reiniciar Neovim e instalar los plugins
Una vez que guardes los cambios, debes salir de Neovim y volver a entrar, luego ejecutar :PlugInstall

Esto instalará los plugins y las extensiones de CConquer of Completion (coc).

Paso Final: Configura coc-python
Para que todo funcione correctamente debes instalar de manera global una libreria de python llamada “jedi”. Al instalarlo de manera global te evitarás tener que instalarlo en cada uno de tus ambientes virtuales.

Para Instalar:
``
$ pip install jedi
``
Una vez instalada, hay que configurar CoC. Primero copia la ruta donde se instaló jedi, para saber esa ruta ejecuta lo siguiente en la terminal:

```
$ pip show jedi

Name: jedi
Version: 0.17.2
Summary: An autocompletion tool for Python that can be used for text editors.
Home-page: https://github.com/davidhalter/jedi
Author: David Halter
Author-email: davidhalter88@gmail.com
License: MIT
Location: /usr/lib/python3.9/site-packages <== Esta es la ruta que debes copiar en el siguiente archivo de configuración
Requires: parso
Required-by:
Abre Neovim y ejecuta :CocConfig
```
Esto abrirá un buffer vacío, este buffer es donde configuras CoC

Agrega lo siguiente, reemplazando la ruta por la ruta donde está instalado “jedi” en tu sistema:
```
{
    "python.jediPath": "/usr/lib/python3.9/site-packages"
}
```
Guarda el archivo, cierra Neovim y vuelve a abrir.

Listo, hasta aquí tienes una configuración lista para trabajar con Neovim en los casos que no se disponga de un VSC
