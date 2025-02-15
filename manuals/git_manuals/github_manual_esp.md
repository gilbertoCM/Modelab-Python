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

Verifica la instalación con el comando: 

   *git --version* 


2. GitHub Desktop (Interfaz gráfica opcional)
Descárgalo desde: https://desktop.github.com/ .
Permite gestionar repositorios sin usar la línea de comandos.
3. Autenticación en GitHub desde la terminal
Genera un token de acceso personal en https://github.com/settings/tokens si usas HTTPS.
Usa ssh-keygen para crear una clave SSH y agrégala en https://github.com/settings/keys , si prefieres autenticación SSH.

## EJECUTACIÓN DE GITHUB


### CREACIÓN Y GESTIÓN DE REPOSITORIOS 

- #### Crear un Repositorio en GitHub

**NOTA:** Hay dos formas de crear un repositorio, la primera es desde GitHub y la segunda manera es desde terminal.

  ### *Desde Git Hub*

 1. Inicia sesión en GitHub.

 2. Haz clic en el botón "+" y selecciona "New repository".

 3. Escribe un nombre para el repositorio y elige si será público o privado.

 4. Haz clic en "Create repository".

     -  Datos que debes proporcionar:

     Nombre del repositorio (ejemplo: mi-proyecto).

     Descripción (opcional, pero recomendable).

     - Visibilidad:

     Público (visible para todos).

     Privado (solo accesible para ti y colaboradores).

     - Opcionales:

     README.md: Explica de qué trata el repositorio.

     .gitignore: Archivos que Git debe ignorar.
  
     Licencia: Tipo de licencia de tu código (MIT, GPL, etc.).
   
   ### *Desde terminal*

1. #### Configurar Git con Github 

    - Configurar el nombre de usuario 

    git config --global user.name "Tu Nombre"

    - Configurar el correo electronico 
 
    git config --global user.email "tuemail@example.com"
 

2. #### Vincular tu repositorio local con GitHub
   
       Es necesario crear una carpeta un tu PC y accede a ella usan los comandos:

       mkdir mi-proyecto       <-- Ejemplo de como escribir el nombre de tu carpeta

       cd mi-proyecto     <-- Ejemplo de como situarse en la carpeta creada o existente
  
    **mkdir:** Se usa para crear directorios (carpetas) en la línea de comandos.                 
    **cd:** Se usa en la terminal para cambiar de directorio.

    #### Inicia git en la carpeta 

    - Empezamos a crear el repositorio con el comando:

      *git init* 

       **git init:** Es un comando de Git que inicializa un nuevo repositorio Git en una carpeta

    - #### Agrega un archivo README.md (opcional)

       Utilizaremos el comando:

       *echo "# Mi Proyecto" > README.md*

    **echo con ">" :**  Si usas > (mayor que), creas un archivo y escribes en él.

    **Nota:** Si el archivo ya existe, su contenido sera reemplazado.

    - #### Agrega los archivos al repositorio 

       *git add .*

       *git commit -m "Primer commit"*    <-- **Ejemplo de como escribir un commit**

    **git add .:** Se usa para agregar todo los archivos y cambios al área de preparación antes de hacer un commit.

    **git commit -m:** Guarda los cambios en el historial del repositorio con un mensaje descrptivo.

3. #### Subir el proyecto a GitHub

       1. Copia la URL del repositorio en GitHub
    
       2. Agrega el repositorio remoto usando el comando:
    
       git remote add origin "https://github.com/tuusuario/mi-proyecto.git"      <-- Ejemplo de como poner el link pero es importante ponerlo sin las comillas

       3. Sube los archivos:

       git branch -M main

       git push -u origin main
    
    **git remote add origin:** Se usa para vincular un repositorio local con un repositorio remoto como GitHub

    **git branch -M main:** Se usa para renombrar la rama actual a "main" y establecerla como la rama pinicipal del repositorio

    **git push -u origin main:** Se usa para subir cambios del repositorio local a un repositorio remoto (como GitHub) y establecer la rama principal para futuros "push" y "pull"

    *¿Qué significa cada termino?*

     *git push* → Envía los commits al repositorio remoto.

     *-u (o --set-upstream)* → Establece la rama remota como referencia para futuros git push y git pull.

     *origin* → Es el nombre del repositorio remoto (vinculado con git remote add origin).

     *main* → Es la rama que se va a subir al repositorio remoto.

     *git branch* → Maneja las ramas del repositorio.

     *-M* → Fuerza el cambio de nombre de la rama, incluso si ya existe.

4. ### Clonar un Repositorio existente
 
    Para trabajar en un repositorio existente debemos situarnos en el y extraer el codigo.
    Usamos el codigo 

    *git clone* https://github.com/usuario/repositorio.git

    Ejemplo 
    
    ![git_clone](/manuals/figures/git_clone.png)


  ## Modificaciones en el Repositorio para Github desde terminal 

5. ### Actualizacion y mantenimiento 
    
    Cuando realizas cambios en tu código, súbelos a GitHub con estos comandos: 

      - Subir cambios al repositorio remoto

       git status

       git add .

       git commit -m "Descripción del cambio"

       git push origin main
   
    **git status**= Ayuda a visualizar que archivos han cambiado.

    **git push origin main**= Sirve para enviar tus cambios a la rama main en GitHub.

6. #### Descagar cambios desde GitHub 
   
    Si alguien más ha hecho cambios en el mismo archivo e intentas hacer un git push origin main, es posible que Git te pida primero actualizar tu código con pull.

    - Si trabajas con otros colaboradores, puedes descargar los cambios más recientes con el comando:

    git pull origin main

    Si hay conflictos, Git te pedirá resolverlos manualmente en los archivos afectados. 



7. #### Trabajar con ramas en GitHub

    Si trabajas en equipo, es recomendable usar **ramas** en lugar de modificar directamente la *main*.

    - Crear una nueva rama usando los comandos:
    git branch nueva-rama 
    git checkout nueva-rama
    git checkout -b nueva-rama 

    - Subir una nueva rama a GitHub:
    git push -u origin nueva-rama

    - Fusionar una rama con *main*
    git checkout main 
    git merge nueva-rama
    git push origin main

### Trabajar en equipo con GitHub 

    Colaborar en un Repositorio 
     Si trabajas en equipo, puedes:
       - Crear un "Fork": Copia un repositorio a tu cuenta.
       - Clonar el repositorio y hacer cambios en tu máquina. 
       - Hacer un Pull Request (PR) para solicitar la fusión de tus cambios.
   
 
  Comó crear un Pull Request (PR)
  1. Sube tus cambios a una rama nueva en GitHub.
  2. Ve al repositorio en GitHub y haz clic en "Pull Request".
  3. Selecciona tu rama y haz clic en "Create Pull Request".
  4. Escribe una descripción y envíalo para revisión.
  5. Alguien revisará tu código y podrá aceptarlo o solicitar cambios. 

  ### Gestionar Problemas y Documentación 

       - Crear un Issue

       Los Issues permiten reportar errores o solicitar nuevas funciones:
       1. Ve a la pestaña "Issues" en GitHub.
       2. Haz clic en "New Issue".
       3. Describe el problema o sugerencia.
       4. Asigna etiquetas y personas responsables.

### Eliminar un repositorio en GitHub 
  
    1. Dirigete a "Settings" en GitHub.
    2. Desplázate hasta la sección "Danger Zone".
    3. Haz clic en "Delete this repository".


### Ver los colaboradores y permisos del repositorio 
   
    Si trabajas en equipo, puedes administrar colaboradores desde GitHub:

    - Dirigete a **Settings** > **Collaborators** y agrega miembros con permisos específicos.


### Cuándo usar HTTPS vs. SSH

    Método          Cuándo usarlo                  Ventajas                         Desventajas 

    HTTPS     Para usuarios ocasionales         Fácil de usar, no requiere       Necesita autenticación 
              o cuando no puedas usar SSH       configuración previa.            manual cada vez.

    SSH       Para desarrollaodres fre-         No requiere ingresar creden-     Requiere configuración 
              cuentes o equipos.                ciales cada vez.                 previa.


  
### Consejos  y Buenas prácticas 

  - Escribe mensajes de commit claros y descriptivos.
  - Usa .gitignore para evitar subir archivos innecesarios (ejemplo: node_modules, *.log).
  - Trabaja con ramas para evitar cambios en main sin revisión.
  - Sincroniza cambios regularmente con git pull.
  - Usa "Issues" y "Pull Requests" para organizar el trabajo en equipo



  ## RESUMEN RAPIDO DE COMANDOS ÚTILES

         COMANDO                            DESCRIPCIÓN                       

         git init                   -----   Inicia un repositorio.               

         git clone                 -----    Clona un repositorio  de Github.       

         git status                -----    Muestra el estado de los archivos.   

         git add .                 -----    Agrega cambios al área de preparación.

         git commit -m "Mensaje"   -----    Guarda los cambios en el historial.   

         git push origin main      -----    Sube los cambios a Github.           

         git pull origin main      -----    Descarga los cambios a Github.       

         git checkout -b rama      -----    Crea una nueva rama.                 

         git merge rama            -----    Fusiona una rama con main.           
   
### Errores más comunes al usar GitHub y cómo solucionarlo 
   
   Al usar Git y GitHub, es común encontrarse con errores. Aquí te dejo una lista con los más comunes y cómo resolverlos:
    
   1.  **"fatal: not a git repository (or any of the parent directories): .git"**

   *Causa*: Estás ejecutando un comando de Git en una carpeta que no es un repositorio de Git.

     Solución: 
    - Verifica si estás en la carpeta correcta con pwd (Linux/macOS) o cd en windows.
    - Si la carpeta no tiene un repositorio Git, inicialízalo con:

    git init
   
   2. **"fatal:remote origin already exits"**

   *Causa*: Ya hay un remoto llamado **origin**, y estás tratando de añadirlo nuevamente.

     Solución:
    - Verifica los remotos existentes:

     git remote -v

    - Si necesitas cambiar el remoto, primero elimínalo y agrégalo de nuevo:

     git remote remove origin

    Después:

     git remote add origin https://github.com/usuario/repositorio.git

   3. **"fatal: Authentication failed" (Error de autenticación)**
    
  *Causa*: Tu usuario o contraseña son incorrectos o GitHub dejó de aceptar autenticaciones con contraseña.
     
     Solución:
    - Usa tokens personales en lugar de contraseñas:
     1. Dirigete  GitHub Tokens y genera uno.
     2. Usa este token en lugar de la contraeña al hacer git push. 
    
    - También puedes configurar SSH en lugar de usar HTTPS con el comando: 

     ssh-keygen -t rsa -b 4096 -C ¨tuemail@example.com¨

   4. **"error:failed to push some refs to 'https://github.com/...´"**

  *Causa*: Tu rama loca está desactualizada con respecto al remoto. 

     Solución:

     1. Primerp, obtén los cambios más recientes de GitHub con el comando:

     git pull origin main --rebase

     2. Luego, intenta subir nuevamente:

     git push origin main 

    - Si hay conflictos, Git te pedirá resolverlos manualmente antes de continuar.

  5. **"Merge conflict in [archivo]" (Conflic de fusión)**
   
    *Causa*: Dos personas modificaron el mismo archivo en diferentes versiones.

     Solución:

     - Abre el archivo indicado y verás algo como:

     <<<<<<< HEAD
     (tu versión)
     =======
     (versión remota)
     >>>>>>> otro_commit 

     - Edita el archivo manualmente, eligiendo qué cambios mantener.
     - Guardar el archivo, luego:

     git add .
     git commit -m "Resolviendo conflicto"
     git push origin main

  6. **"detached HEAD state" (Modo HEAD separado)**

  *Causa*: Estás en un estado donde no tienes una rama activa.

     Solución:
     - Si quierías revisar un commit antiguo, vuelve a la rama principal con el comando:
    
     git checkout main 

     - Si hiciste cambios y no quieres perderlos:
    
     git checkout -b nueva-rama

  ## CONCLUSIÓN 

   GitHub es una herramienta esencial para la gestión de código y la colaboración en proyectos de software. Su integración con Git permite controlar versiones, colaborar con otros desarrolladores y desplegar código de manera eficiente. 

   - Para aprovechar GitHub al máximo:

     Usa **ramas** para organizar mejor los cambios.

     Aprende a resolver **conflictos** para mejorar el trabajo en equipo.

     Configura un archivo **.gitignore** para evitar subir archivos innecesarios.

     Explora herramientas avanzadas como **GitHub Actions** para automatización.







    


