# **Gestión de repositorios Git**

Te mostraremos paso a paso como crear y enlazar repositorios Git, aquí abordaremos tres formas diferentes, desde la terminal GitBash, desde GitHub y desde VS Code. Si bien unas son más sencillas que otras, es recomendable conocer todas puesto que en diversas situaciones solo podemos utilizar alguna, además los conceptos abordados en cada uno pueden ser retomados en diersas siuaciones. 


## **Creación de cuenta en GitHub**

-Antes de cualquier cosa, necesitamos darnos de alta en la página de GitHub. 

1.Ingresa a la siguiente página https://github.com. 

2.Haz click en "Sign up". 

3.Completa el formulario con tu nombre de usuario, correo electrónico y contraseña. 

4.Verifica tu cuenta mediante el correo electrónico enviado por GitHub. 


### **Configura tu identidad de Git (solo una vez por equipo)**

-Entra a la terminal GitBash 

-Escribimos el siguiente comando seguido de tu nombre de usuario en GitHub y pulsamos enter para ejecutarlo (en adelante, se sobreentiende que todos los comandos se ejecutan): 

        git config --global user.name "Tu Nombre"


-Algo parecido, pero con tu correo de GitHub:

        git config --global user.email "tu@email.com"

 
-Puedes verificar con el siguiente comando: 

        git config --global –list


## **Gestión de Carpetas**

-Ejecutamos GitBash  

-Escribimos el comando *pwd* esto nos permite saber en que **path** o ruta nos encontramos. Generalmente nos encontramos en donde se instala por defecto GitBash. 

-Ejecutamos el comando *ls* para desglosar la lista de archivos encontrados por la terminal.  

-A continuación, decidiremos donde crearemos la carpeta que alojara a nuestro repositorio Git. Puede ser una ubicación que reconozcamos de la lista o bien crear una carpeta general donde guardemos todos nuestros repositorios, como se nos haga más cómodo. 

-Para la primera opción, supongamos que se elige **Documents** (nombre de la ubicación que elegimos) para luego escribir el comando *cd* seguido del nombre de la ubicación, como se muestras a continuación: 

    cd nombre_de_la_ubicación 
    Ejemplo: cd Documents 

-Observamos que ya nos “movimos” hacia esa ruta. Esta es una forma de moverse entre ubicaciones, cabe mencionar que si queremos “regresar” solo ejecutamos el comando *cd –*

-Ya que nos encontremos en nuestra ubicación, escribimos el comando *mkdir* seguido del nombre que le asignemos a la carpeta, como a continuación se muestra: 

    mkdir nombre_de_la_carpeta 
    Ejemplo: mkdir Mis_Repositorios 

-Confirmamos la creación con *ls* y nos dirigimos allí con *cd* 

-Nuevamente creamos una capeta para nuestro primer proyecto con *mkdir* y lo nombramos gustemos. 

-Otra forma de crear una carpeta, es desde el **Explorador de Archivos de Windows**, como comúnmente lo hacemos, nos metemos a esa carpeta y copiamos la ruta de la parte superior. Para luego de ejecutar GitBash escribir el comando *cd* seguido de la ruta copiada entre **comillas rectas**, como a continuación se muestra: 

    cd "\ruta\de\la\carpeta" 
    Ejemplo: cd "C:\Users\ebert\Documents\Mis_Repositorios" 

-Otra forma sería dando click derecho sobre la carpeta luego en “mostrar más opciones” y seleccionamos “Abrir GitBash aquí” 

Estas son algunas de las formas de crear y acceder a las ubicaciones, es recomendable manejar todas por si en algún momento no podemos utilizar alguna.


## **Repositorio Git con GitBash**

### **Crear Repositorio Git**

-Una vez nos ubiquemos en la carpeta seleccionada, utilizaremos en comando *git status* esto nos permite conocer el estatus de la carpeta o de cualquier path donde estemos ubicados. 

-Observamos que no se ha creado un repositorio aquí, de modo que lo crearemos con el comando *git init* 

-Primeramente, vemos que se nos añade la nomenclatura de **(master)** a la ruta, esto nos dá un indicio de que ya es un repositorio, pero lo corroboramos con el comado *git status*  

-La nomenclatura **(master)** indica que estamos trabajando en la “rama (branch) principal” del repositorio, más adelante se abordara la importancia y el uso de las ramas, por el momento solo establecemos que así se llama nuestra rama principal. 

-También observamos que no se ha hecho ningún **commit**, estos a *grosso modo* son como nuestros “puntos de guardado”, es decir, son confirmaciones comentadas de cada cambio que hagamos en el repositorio. Nos permiten llevar un historial de cambios detallados, útiles cuando en el futuro queramos volver a una versión pasada o bien cuando se trabaja en equipo. 

-Crearemos nuestro primer commit, pero antes añadiremos un archivo necesario con el comando *git add* seguido de la leyenda **README.md** como se muestra a continuación:  

-Podemos añadir un texto (que se mostrará en el repositorio) con el siguiente comando: 

*echo "# Texto" > README.md* 

Luego ejecutamos: *git add README.md*

    Ejemplo: echo "# Mi proyecto" > README.md 
    git add README.md 

-Si no queremos ponerle texto, solo ejecutamos: 

    git add README.md 

**NOTA: Si les salta una advertencia, no hay de que preocuparse, es solo una aclaración acerca del formato.**

-Una vez añadido, veremos el primer cambio con el comando *git status* Posteiormente crearemos el commit con el comando *add commit -m* seguido de la descripción de los cambios que se hayan realizado entre comillas rectas, como se muestra a continuación: 
    git commit -m "Descripción del cambio" 
    Ejemplo: git commit -m "Cree el repositorio y el primer commit" 

-Ya tenemos prácticamente listo el repositorio, pero vamos a cambiar el nombre del **branch** o rama, ya que actualmente en el entorno de GitHub se refiere a la rama principal como **main**, básicamente por convención, sin embargo, le podemos poner el nombre que nosotros queramos o dejarlo así. Se hace mediante el siguiente comando: 

    git branch -M nombre_rama_principal 
    Ejemplo: git branch -M main 

-Observamos que se cambia el nombre de la rama en el directorio. 

### **Enlazar memoria local con GitHub**

-Dejamos de momento la terminal y nos dirigimos a GitHub: 

1. Damos clic en el símbolo “+” y luego a New repository 

2. Llenamos los datos que nos piden. 

3. Dejamos **SIN MARCAR LA CASILLA README.md** (puesto que ya la tenemos creada en nuestra memoria local)   

4. Le damos a crear y copiamos la liga que termina en .git  

 
-Para enlazar nuestro repositorio a GitHub previamente ya debimos haber iniciado sesión en GitBash con el mismo usuario y correo con el que nos dimos de alta en GitHub. 

-Nos enlazamos con el siguiente comando: 

    git remote add origin la/liga/del/repositorio/en/GidHub 
    Ejemplo: git remote add origin https://github.com/Eberth024/Curso-de-Pyton.git 


-Una vez enlazado solo nos queda subir los cambios con el siguiente comando: 

    git push -u origin nombre_rama_principal 
    Ejemplo: git push -u origin main 

-Vamos al navegador y damos refresh, obervaremos nuestro archivo y la descripción del commit. 

-Y listo, ya podremos ir subiendo cambios conforme los vayamos haciendo. 


## **Repositorio Git con GitHub**

### **Crear Repositorio Git**

-Nos dirigimos a GitHub: 

1. Damos clic en el símbolo “+” y luego a New repository 

2. Llenamos los datos que nos piden. 

3. Marcamos la casilla de README.md  

4. Le damos a crear y copiamos la liga que termina en .git que se encuentra en el apartado de “Code”. 

### **Enlazar Repositorio Git con memoria local**
-Ejecutamos GitBash y nos ubicamos en la carpeta donde colocaremos el repositorio (revisar [Gestión de Carpetas](Untitled-1.ipynb#gestión-de-carpetas) en caso de no saber). Para posteriormente ejecutar el siguiente comando: 

    git clone https://github.com/usuario/repositorio.git 
    Ejemplo: git clone https://github.com/Eberth024/Curso-de-Pyton.git 
 
-Nos dirigimos al repositorio con *cd* y verificamos con *git estatus*. 


# **Repositorio Git con Visual Studio Code (VS Code)**

-Ejecutamos VS Code y abrimos la carpeta donde ubicaremos el repositorio, con la opción “Open folder” 

-En la barra de tareas nos dirigimos a la ficha de “SOURCE CONTROL” y le damos a iniciar repositorio, seguidamente se nos abrirá el navegador y nos pedirá iniciar sesión en GitHub, lo cual enlaza automáticamente nuestro repositorio Git 

-Para clonar un repositorio ya hecho, nos dirigimos a la misma ficha pero sin abrir un folder, hacemos clic en clonar e introducimos la liga .git del repositorio, posteriormente lo guardamos donde queramos. 