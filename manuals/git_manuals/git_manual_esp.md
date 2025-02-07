# Manual para el manejo de Git en Windows

# Instalación  de git (para windows)

## *Nota: Git y Github son dos herramientas diferentes.*

Git: Es un software que está ya incluido para modelos linux y mac (en su mayoría). Por lo que para Windows es necesaria una previa descarga de este software. Una vez descargado para el sistema operativo de su preferencia *todos los comandos y el funcionamiento de este es el mismo.*

**Git funciona como una memoria de código.** Teniendo un funcionamiento similar a una memoria de juegos donde conforme avance el juego, aunque pierdas una vida, no se borra tu proceso. Mencionando que esto es solo local en tu computadora. ***Siendo este un control de versiones, que registra los cambios realizados en un archivo o conjunto de archivos a lo largo del tiempo, con el objetivo de poder recuperar/mantener versiones específicas.***

#### Descarga de git:

- click: [https://git-scm.com/](https://git-scm.com/) *Nota: Descargar una versión de acuerdo a su sistema operativo*.

## Primeros pasos en Git.

Para el manejo de Git existen varias vertientes pero en este manual estaremos visualizando sólo dos, las cuales serán el uso de terminal por medio de Git Bash y el uso de una herramienta gráfica, como en este caso será el uso de Visual Studio Code.

***Nota: una de las mejores maneras de entender Git es desde la terminal, ya que ayuda a una visualización de los cambios que son efectuados***.

## En terminal 

Para comenzar a trabajar en terminal, hay que entrar en **Git Bash.**  
Como primer paso,para saber que ya se instalo correctamente Git, pondremos los comandos:

- git 

 Al solo escribir git y click en enter no ha ejecutado ninguna acción, por lo cual nos mostrará una lista de los comandos de Git. 

A continuación se mostrarán algunos de los comandos más utilizados en Git:

- git init  =iniciar un proyecto para usar Git.  
- git add . =se guardan todos los cambios que se hayan realizado.  
- git add [filename] =es para guardar el archivo nombrado.  
- git commit-m 'mensaje' =guarda los cambios, con un mensaje que nos deberá indicar generalmente qué cambios se realizaron.  
- pwd =muestra la ruta en la cual estamos trabajando.  
- git status = se utiliza para obtener un resumen del estado actual del repositorio. Es una herramienta clave para entender qué está pasando en tu proyecto y qué cambios necesitas manejar.  
- ls =muestra el contenido del folder en donde estamos.  
- mkdir [nombre] =crear una carpeta.  
- cd [nombre] =te lleva al archivo/carpeta determinado.   
- cd .. = te regresa al folder/archivo anterior.  
- clear =limpia la pantalla de todos los comandos que se han puesto previamente.

Como siguiente paso, visualizamos en que versión de Git estaremos trabajando:

- git --version

Otra manera poder de ver que versión tenemos, es con el comando :

- git -v

Y con esto nos mostrará la versión que fue instalada.

También podemos checar que en que **path** esta guardado git, por lo que pondremos el comando:

- where.exe git 

Para seguir en la correcta utilización de Git Bash, es necesario que se configure un usuario local, que en este caso consiste de un nombre y email, para que estos puedan ser atribuidos con los cambios que realice el usuario localmente y la fecha de cuando los realiza. 

***Nota: Es recomendable que el email que se utilice también pueda ser utilizado en el usuario de GitHub.***

- git config --global user.name [tu nombre]  
- git config --global user.email [tu email]

Antes de continuar, verificaremos si se ha guardado correctamente y para ello usamos el comando:

- git config --list 

Este comando nos ayudará a verificar si el nombre y el correo se han guardado correctamente.

Una vez configurado el usuario local, empezaremos a trabajar desde la terminal. Esto con el objetivo de poder visualizar dónde estará nuestro repositorio. Por lo cual empezaremos a trabajar con los siguientes comandos.

- pwd = ya que lo primero que queremos verificar es la ruta en la que estamos.   
- ls = aquí tendremos una lista de los directorios a los cuales se tienen acceso o en caso de ya estar trabajando, se muestra la ruta en la cual estamos.  
- cd = aqui es para movernos a uno de los directorios/carpetas, por lo que [nombre del folder/directorio en este caso nuestro repositorio se encontrará en la carpeta de documents]  
- ls = con este comando podemos visualizar el contenido de dicho folder.  
- cd ..= cuando se necesite regresar a un folder anterior.  
- pwd = por ejemplo como ya estamos en [documents] este comando nos tiene que mostrar dicha ruta.

Lo siguiente se puede ver en las siguientes figuras:  

![pwd y ls](/manuals/figures/pwd_y_ls.jpg)

![cd ls pwd](/manuals/figures/cd_ls_pwd.png)

***Nota: en este momento al ya haber ingresado comandos, con las flechas del teclado podemos utilizar algún comando previamente utilizado***.

Una vez familiarizado con estos comandos, empezaremos a trabajar, por lo tanto realizaremos un folder a través de la terminal.

- mkdir [nombre de la carpeta que queremos crear]

La carpeta ha sido creada, por lo que para verificarlo, utilizaremos los siguientes comandos:

- ls =podemos ver que la carpeta fue creada en la ruta en la cual estábamos trabajando.  
- cd [el nombre de la carpeta] = esto para adentrarnos en la carpeta que previamente hemos creado.

Como se puede ver en el ejemplo:

![pwd mkdir cd](/manuals/figures/pwd%20mkdir%20cd.png)

***Nota: si escribimos el inicio del archivo y  le damos en el tabulador, nos mostrará las opciones con las cuales puede completar el comando que necesitamos***

***Nota: si queremos limpiar los comandos previos utilizamos el comando "clear", esto no afecta nada de lo que se realiza.***

También se pueden realizar archivos desde la consola, por lo cual usaremos el comando:

Se realiza con el comando touch (en este caso el nombre del archivo con su extensión correspondiente "hellogit_miranda.py" en este caso la extensión es ".py" porque queremos hacer un archivo de python, pero puede ser la extensión de cualquier tipo de archivo como markdown ".md") 

- touch hellogit_miranda.py  
- ls = ahí podremos ver que el archivo fue creado en la carpeta, en la cual estábamos trabajando

Así ya hemos creado un archivo de código en python, por lo cual si revisamos nuestra carpeta, ya ha sido creado un archivo.

Como se puede ver en la figura:  

![touch_ls](/manuals/figures/touch_ls.png)

### Inicio del repositorio

Pero como queremos tener un control de las versiones de código que trabajemos, iniciaremos un repositorio en nuestra carpeta, por lo cual pondremos el comando:

- git init

y nos mostrará lo siguiente como se puede ver en la siguiente figura:

"Initialized empty Git repository in C:/Users/labmodel/Documents/Hello_Git_Miranda/.git/"

Que nos indica que actualmente el repositorio se inició pero está vacío y así mismo la ruta en donde este está guardado. Ahora ya podremos trabajar con el control de versiones.

![git_init](/manuals/figures/git_init.png)

***Cuando se trabaja con Git, es importante el concepto de repository: el cual comprende toda la colección de archivos y carpetas asociados con un proyecto, en conjunto con el historial de revisión de cada archivo***.

*Nota: Estamos en una trabajando localmente pero es denominado como master y en el cual tambien se podrá trabajar por branch "brazos/ramificaciones de este mismo trabajo"* 

Podemos renombrar este master, si es que así lo deseamos.

- git branch -m [nombre del nuevo master; en este caso ejemplo_miranda]

Antes de seguir trabajando visualizaremos el status de nuestro trabajo.

- git status 

On branch ejemplo_miranda    
*indica que esta en el master*

No commits yet *nos dice que no se han añadido*

Untracked files:  
  (use "git add <file>..." to include in what will be committed)  
        hellogit_miranda.py

**nos indica que hay archivos pero estos no han sido guardados dentro del repositorio**

nothing added to commit but untracked files present (use "git add" to track)

Como puede verse en la siguiente figura:

![branch_y_status](/manuals/figures/branch_y_status.png)

Antes de guardar nuestro archivo lo abriremos desde la consola, para poder trabajar con el: 

- code= (abre nuestra herramienta gráfica en este caso Visual Studio Code, si es que ya esta previamente instalado)   
- code .= (abre nuestra herramienta gráfica en este caso Visual Studio Code, si es que ya esta previamente instalado, pero con acceso rápido a la carpeta que previamente habíamos creado).

Una vez abierto VSC, podremos ejecutar algo sencillo como la siguiente linea:
- print ("hola a todos")
Para correr esa línea de código (shift+enter).
Como podemos ver en la siguiente figura:

![ejemplo_py](/manuals/figures/ejemplo_py.png)

Por lo cual para guardar nuestros archivos utilizaremos el comando:

- git add [nombre de nuestro archivo]  
- git add hellogit_miranda.py

Si volvemos a checar el status (**con el comando de Git Status**), ahora nos indicará que este fue añadido al repositorio pero que este no tiene commits "no commits yet"

**Nota: Si hacemos el comando "git add . se guardan todos los archivos que esten pendientes o los *untracked files*.**

![git_add](/manuals/figures/gitt_add.png)

Por lo cual para que estos cambios ya queden registrados es necesario utilizar el comando:

-git commit -m " Este mensaje estará entre comillas y busca que sea claro de lo que se ha hecho *mi primer commit*"

***Nota: una vez realizado el commit, este tendrá un identificador único, lo cual nos permitirá identificar entre los n-commits que pudieramos realizar en nuestro trabajo***.

Cuando se quieran visualizar los commits que se han realizado, se utiliza el comando:

- git log   

***Nota: esto nos indica el identificador único de cada commit y quien lo ha realizado, en este caso como estamos trabajando localmente, aparecerá nuestra información (que previamente hemos configurado) y a parte la fecha exacta de cuando este ha sido realizado y el mensaje que se ha commiteado, en este caso *mi primer commit* ***

Como puede ver el la siguiente figura:

![commit_log](/manuals/figures/commit_log.png)


### Vscode

Visual Studio Code es una herramienta gráfica que nos permite de manejar Git y Git Hub de una manera simple.  

Lo primero que realizaremos es la descarga de VSCode.
Para descargar VScode:  
- click en https://code.visualstudio.com/

Esta herramienta al igual que el trabajar con terminal su próposito es el control de versiones por medio de un repositorio ya sea local o remoto.

Una vez descargado, abriremos VScode, es importante mencionar que se puede trabajar desde terminal desde la misma aplicación, por lo cual para eso nos iremos a al apartado "view" y seleccionaremos "terminal", como se puede observar en la imagen.

![abrir_terminal](/manuals/figures/abrir_terminal.png)

**Nota: una vez abierta la terminal es necesario verificar que en la esquina superior derecha, diga ***powershell*** **.

El primer paso para utilizar VScode y Git juntos, es tener una carpeta previamente destinada que será la que utilicemos para realizar nuestro repositorio, por lo que abriremos VScode y realizaremos los siguientes pasos y como se muestra en las siguientes figuras:

- open folder   
- ubicar la carpeta previamente seleccionada

![open_folder](/manuals/figures/open_folder.png)

- click en source control (este se encuentra en la una columna del lado izquierdo)

![source_control](/manuals/figures/source_control.png)


- click en initialize repository **con esto ya hemos empezado el repositorio en Git desde VSCode**

Empezaremos a realizar un archivo, pero podemos ver que la interfaz de source control esta cambiada, por lo que para hacer un nuevo archivo daremos, nos ubicaremos en la columna de la parte superior izquierda en el ícono **explorer** y le daremos click en **new file**, como se ve en la imagen:

![new_file](/manuals/figures/new_file.png)

Una vez dado click, nombraremos el archivo (**Nota:el nombre del archivo va con todo y la extensión del tipo de archivo que necesitemos**)

En este caso nombraremos nuestro archivo como: [ejemplo.py] **.py es la extensión para un archivo de python**

print("Hola")
y para guardarlo haremos **ctrl+S**, una vez realizado eso, nos iremos a **source control** y le daremos click a nuestro archivo, debe estar abajo del apartado **changes** y si le damos click, podremos ver que nos aparecen nuestros primeros cambios, estos del lado donde se añadieron de color verde.

![primeros_cambios](/manuals/figures/primeros_cambios.png)

Por lo que para guardar este cambio de una manera permanente necesitamos **commitear** nuestro trabajo y se vean reflejados los cambios en el repositorio (***Nota: estos necesitan ser cortos y concisos de los cambios generales que se han realizado***)

![primer_commit](/manuals/figures/primer_commit.png)
 
 Estos pasos se harán cada vez que necesites hacer un cambio y lo quieras guardar. Con esto puedes editar e ir añadiendo archivos a tu repositorio mientras manejas un control de estos mismos.

 