# MANUAL DE USO DE GITHUB
### Este manual funciona tanto para macOs y Windows

GitHub es una plataforma de alojamiento de código basada en la nube que permite la gestión de repositorios Git. Facilita la colaboracion entre desarrolladores, proporcionando herramientas para el control de versiones, gestión de proyectos y revisión de codigo.

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

![git_version](/figuras/git_version.png)

2. GitHub Desktop (Interfaz gráfica opcional)
Descárgalo desde: https://desktop.github.com/ .
Permite gestionar repositorios sin usar la línea de comandos.
3. Autenticación en GitHub desde la terminal
Genera un token de acceso personal en https://github.com/settings/tokens si usas HTTPS.
Usa ssh-keygen para crear una clave SSH y agrégala en https://github.com/settings/keys , si prefieres autenticación SSH.

## EJECUTACIÓN DE GITHUB
### Configurar Git con Github 
 - Configurar el nombre de usuario 

git config --global user.name "Tu Nombre"
 - Configurar el correo electronico 
 
 git config --global user.email "tuemail@example.com"
 
 *Ejemplo*

 ![git_user](/figuras/git_user.png)

## CREACIÓN Y GESTIÓN DE REPOSITORIOS 

### Crear un Repositorio en GitHub

 1. Inicia sesión en GitHub.

 2. Haz clic en el botón "+" y selecciona "New repository".

 3. Escribe un nombre para el repositorio y elige si será público o privado.

 4. Haz clic en "Create repository".

### Clonar un Repositorio

Para trabajar en un repositorio existente debemos situarnos en el y extraer el codigo.
*Ejemplo*

![git_clone](/figuras/git_clone.png)

