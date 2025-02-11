# MANUAL DE USO DE GITHUB
### Este manual funciona tanto para macOs y Windows

GitHub es una plataforma de alojamiento de código basada en la nube que permite la gestión de repositorios Git. Facilita la colaboracion entre desarrolladores, proporcionando herramientas para el control de versiones, gestión de proyectos y revisión de codigo.

**Antes de empezar, es importante entender la diferencia entre Git y GitHub:**

 *Git:* Es un sistema de control de versiones que te permite rastrear cambios en archivos y trabajar en equipo sin perder información.
 *GitHub:* Es una plataforma en la nube donde puedes guardar y compartir repositorios Git con otras  personas.
 Piensa en Git como una libreta donde anotas cambios y GitHub como una biblioteca donde guardas esa libreta en línea.

## CREACIÓN DE UNA CUENTA EN **GITHUB**

1. Ingresa a la siguiente página  https://github.com.

2. Haz clic en "Sign up".

3. Completa el formulario con tu nombre de usuario, correo electrónico y contraseña.

4. Verifica tu cuenta mediante el correo electrónico enviado por GitHub.

**NOTA: Si usas Git bash es importante que pongas los mismos datos en tu cuenta de github como el email para que se puedan sincronizar cambios que realices en el repositorio**

## INSTALACIÓN

GitHub no requiere instalación, ya que es una plataforma basada en la web. Sin embargo, puedes instalar herramientas para interactuar con GitHub desde tu computadora, como:

1. Git (necesario para usar GitHub con la terminal)
Descárgalo desde: https://git-scm.com/ .
Verifica la instalación con 

   git --version 

*Ejemplo*

![git_version](/Manuals/Figures/git_version.png)

2. GitHub Desktop (Interfaz gráfica opcional)
Descárgalo desde: https://desktop.github.com/ .
Permite gestionar repositorios sin usar la línea de comandos.
3. Autenticación en GitHub desde la terminal
Genera un token de acceso personal en https://github.com/settings/tokens si usas HTTPS.
Usa ssh-keygen para crear una clave SSH y agrégala en https://github.com/settings/keys , si prefieres autenticación SSH.

## EJECUTACIÓN DE GITHUB


### CREACIÓN Y GESTIÓN DE REPOSITORIOS 

### Crear un Repositorio en GitHub

 **NOTA: Hay dos formas de crear un repositorio, la primera es desde GitHub y la segunda manera es desde terminal.**

  ## *Desde Git Hub*

 1. Inicia sesión en GitHub.

 2. Haz clic en el botón "+" y selecciona "New repository".

 3. Escribe un nombre para el repositorio y elige si será público o privado.

 4. Haz clic en "Create repository".

   * Datos que debes proporcionar:

  Nombre del repositorio (ejemplo: mi-proyecto).
  Descripción (opcional, pero recomendable).

   - Visibilidad:

  Público (visible para todos).

  Privado (solo accesible para ti y colaboradores).

   - Opcionales:

  README.md: Explica de qué trata el repositorio.

  .gitignore: Archivos que Git debe ignorar.

  Licencia: Tipo de licencia de tu código (MIT, GPL, etc.).
   
   ## *Desde terminal*

1. #### Configurar Git con Github 
  - Configurar el nombre de usuario 

  git config --global user.name "Tu Nombre"
  - Configurar el correo electronico 
 
  git config --global user.email "tuemail@example.com"
 
  *Ejemplo*

  ![git_user](/Manuals/Figures/git_user.png)

2. #### Vincular tu repositorio local con GitHub
    Es necesario crear una carpeta un tu PC y accede a ella usan los comandos:
    mkdir mi-proyecto    <-- *Ejemplo de como escribir el nombre de tu carpeta*
    cd mi-proyecto       
  
    **mkdir: Se usa para crear directorios (carpetas) en la línea de comandos.**                 
    **cd: Se usa en la terminal para cambiar de directorio**

    #### Inicia git en la carpeta 
    Empezamos a crear el repositorio con el comando:
    git init 

    **git init: Es un comando de Git que inicializa un nuevo repositorio Git en una carpeta**

    #### Agrega un archivo README.md (opcional)
    Utilizaremos el comando:
    echo "# Mi Proyecto" > README.md

    **echo con ">" :  Si usas > (mayor que), creas un archivo y escribes en él**
    *Nota: Si el archivo ya existe, su contenido sera reemplazado.*

    #### Agrega los archivos al repositorio 
    git add .
    git commit -m "Primer commit"    <-- *Ejemplo de como escribir un commit*

    **git add .: Se usa para agregar todo los archivos y cambios al área de preparación antes de hacer un commit.**
    **git commit -m: Guarda los cambios en el historial del repositorio con un mensaje descrptivo**

3. #### Subir el proyecto a GitHub
    -Copia la URL del repositorio en GitHub
    
    -Agrega el repositorio remoto usando el comando:
    
    git remote add origin "https://github.com/tuusuario/mi-proyecto.git"      <-- *Ejemplo de como poner el link pero es importante ponerlo sin las comillas*

    -Sube los archivos:

    git branch -M main
    git push -u origin main
    
    **git remote add origin: Se usa para vincular un repositorio local con un repositorio remoto como GitHub**
    **git branch -M main: Se usa para renombrar la rama actual a "main" y establecerla como la rama pinicipal del repositorio**
    **git push -u origin main: Se usa para subir cambios del repositorio local a un repositorio remoto (como GitHub) y establecer la rama principal para futuros "push" y "pull"**

    *¿Qué significa cada termino?*
     git push → Envía los commits al repositorio remoto.
     -u (o --set-upstream) → Establece la rama remota como referencia para futuros git push y git pull.
     origin → Es el nombre del repositorio remoto (vinculado con git remote add origin).
     main → Es la rama que se va a subir al repositorio remoto.
     git branch → Maneja las ramas del repositorio.
     -M → Fuerza el cambio de nombre de la rama, incluso si ya existe.

4. ### Clonar un Repositorio existente
 
    Para trabajar en un repositorio existente debemos situarnos en el y extraer el codigo.
    *Ejemplo*

![git_clone](/Manuals/Figures/git_clone.png)

  ## Modificaciones en el Repositorio para Github desde terminal 

5. ### Actualizacion y mantenimiento 
   
    - Subir cambios
    git add .
    git commit -m "Descripción del cambio"
    git push origin main
    
    - Descargar cambios desde GitHub
    git pull origin main

6. #### Descagar cambios desde GitHub 
   
    - Si trabajas con otros colaboradores, puedes descargar los cambios más recientes con el comando:
    git pull origin main

7. #### Trabajar con ramas en GitHub

    - Crear una nueva rama usando los comandos:
    git branch nueva-rama 
    git checkout nueva-rama
    git checkout -b nueva-rama 

    - Subir una nueva rama a GitHub:
    git push -u origin nueva-rama

    - Fusionar una rama con *main*
    git checkout main 
    git merge nueva-rama
    git pudh origin main

### Trabajar en equipo con GitHub 

     Colaborar en un Repositorio 
  Si trabajas en equipo, puedes:
   + **Crear un "Fork"**: Copia un repositorio a tu cuenta
   + **Clonar el repositorio** y hacer cambios en tu máquina 
   + **Hacer un Pull Request (PR)** para solicitar la fusión de tus cambios.
   
     Comó crear un Pull Request (PR)
  1. Sube tus cambios a una rama nueva en GitHub.
  2. Ve al repositorio en GitHub y haz clic en "Pull Request".
  3. Selecciona tu rama y haz clic en "Create Pull Request".
  4. Escribe una descripción y envíalo para revisión.

### Gestionar Problemas y Documentación 

--> Crear un Issue
  Los Issues permiten reportar errores o solicitar nuevas funciones:
  1. Ve a la pestaña "Issues" en GitHub.
  2. Haz clic en "New Issue".
  3. Describe el problema o sugerencia.
  4. Asigna etiquetas y personas responsables.

### Eliminar un repositorio en GitHub 
  
  1. Dirigete a **Settings** en GitHub.
  2. Desplázate hasta la sección **"Danger Zone"**.
  3. Haz clic en **"Delete this repository"**
  
  #### Consejos  y Buenas prácticas 

  - Escribe mensajes de commit claros y descriptivos.
  - Usa .gitignore para evitar subir archivos innecesarios (ejemplo: node_modules, *.log).
  - Trabaja con ramas para evitar cambios en main sin revisión.
  - Sincroniza cambios regularmente con git pull.
  - Usa "Issues" y "Pull Requests" para organizar el trabajo en equipo

  ## RESUMEN RAPIDO DE COMANDOS ÚTILES

   | **COMANDO**                -   **DESCRIPCIÓN**                       |

   |  git init                ------      Inicia un repositorio.               

   |  git clone                 ------    Clona un repositorio de Github.       

   |  git status                ------    Muestra el estado de los archivos.   

   |  git add .                 -----    Agrega cambios al área de preparación.

   |  git commit -m "Mensaje"   -----     Guarda los cambios en el historial.   

   |  git push origin main       -----    Sube los cambios a Github.           

   |  git pull origin main      -----      Descarga los cambios a Github.       

   |  git checkout -b rama      -----     Crea una nueva rama.                 

   |  git merge rama         -----     Fusiona una rama con main.           
   


