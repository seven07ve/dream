# Dreamlopers

Theme Name: Dreamlopers.

Theme URI: http://www.dreamlopers.com

Description: Tema de WP para dreamlopers. &copy; Todos los derechos reservados

Author: Jhean C Guerrero, Jesus Salcedo, Ricardo Graterol, Amilcar Erazo.

Author URI: http://www.dreamlopers.com

Versión: 1.0

## Secciones
* Home
  - Why
  - How
  - What
  - Contact
* News
* Team
* Portfolio
* Social
* Candidates

## Puguins
* Category Posts Sidebar Widget 
> Versión 1.0. Este Plugin su usó para colocar las listas de noticias recientes y tips recientes en los sidebars de News y de los post de news 
> **- No Actualizar -**

* Polylang
> Versión 1.9.2. Plugin multilenguaje para que la página funcione en Español e Ingles.

* Facebook
> Versión 1.5.5. Plugin para agregar pagina de Facebook de dreamlopers dentro de la sección de Social. **Actualmente presenta falla en el servidor.**

***

### Home
```
header-home.php
page-frontpage.php
page-frontpage-es.php
inc/contacto-mail.php
assets/javascripts/contacto.js
```
Solo se puede modificar en la plantilla.
```page-frontpage``` ```page-frontpage-es.php```
#### Contacto
Se puede modificar en:
```page-frontpage``` ```page-frontpage-es.php``` ```inc/contacto-mail.php``` ```assets/javascripts/contacto.js```

*** 
### News
```
header-news.php
header-noticias.php
category-news.php
category-noticias-es.php
```
Solo se puede modificar en las plantillas.
`category-news.php` y `category-noticias-es.php`

#### Para agregar noticias 
* se agrega una nueva entrada.
* Se coloca el título.
* Se selecciona el idioma.
* El contenido.
* Se selecciona la categoría: `News/Noticia`
* Se agrega la imagen destacada.
* Luego se hace click en el + de Languages para hacer lo mismo en el otro idioma

#### Sección donde se muestra cada noticia
```
single/single-cat-news.php
single/single-cat-noticias-es.php
```
Se puede modificar en las plantillas.
`single/single-cat-news.php` y `single/single-cat-noticias-es.php`

### Los comentarios
```
comments.php
inc/template-tags.php
```
Se puede modificar en el archivo.
`comments.php`

***
### Team
```
header-team.php
header-equipo.php
category-team.php
category-equipo.php
```
Solo se puede modificar en las plantillas.
`category-team.php` y `category-equipo.php`

#### Para agregar una persona 
* se agrega una nueva entrada.
* Se coloca el nombre *corto* de la persona en donde se coloca el título de las entradas.
* Se selecciona el idioma.
* El contenido va a ser lo que muestre el modal. Se debe hacer con *html y boostrap*. `Ver ejemplo` 
* Se selecciona la categoría: `Team/Equipo`
* Se agrega la imagen destacada.
* Luego se añade un nuevo campo personalizado para el *cargo*:
  - En nombre seleccionas `puesto`.
  - En valor `descripción corta` del cargo.
* Luego se añade un nuevo campo personalizado para el **Facebook** *Si lo tiene*:
  - En nombre seleccionas `Facebook`.
  - En valor `link de la cuenta` de Facebook.
* Luego se añade un nuevo campo personalizado para el **Linkedin** *Si la tiene*:
  - En nombre seleccionas `Linkedin`.
  - En valor `link de la cuenta` de Linkedin.
* Luego se añade un nuevo campo personalizado para el **Twitter** *Si la tiene*:
  - En nombre seleccionas `Twitter`.
  - En valor `link de la cuenta` de Twitter.
* Luego se hace click en el + de Languages para hacer lo mismo en el otro idioma

***
### Portfolio
```
header-portfolio.php
category-portfolio.php
category-portafolio.php
```
Solo se puede modificar en las plantillas.
`category-portfolio.php` y `category-portafolio.php`

#### Para agregar un trabajo o proyecto
* se agrega una nueva entrada.
* Se coloca el nombre en donde se coloca el título de las entradas.
* Se selecciona el idioma.
* El contenido va a ser la descripción detallada del proyecto. Se debe hacer con *html y boostrap*. `Ver ejemplo` 
* Para agregar iconos de redes sociales usar este código.
``` 
<a href="asdasd" class="social-icon">
<i class="fa fa-facebook facebook"></i>
</a>
```

* La etiqueta ```<i>``` es el icono de fontawesome.io de la red social.
* En la clase de la etiqueta ```<i>``` debe colocarse una clase con el nombre de la red social que corresponda.
* Se selecciona la categoría: `Portfolio/Portafolio`
* Se agrega la imagen destacada.
* Luego se añade un nuevo campo personalizado para la **categoría o categorías** a las que pertenece:
  - En nombre selecciona `Portafolio-area`.
  - En valor escribe la categoría a la que pertenece  `dreamschool dreamlabs dreambuilder`. Si pertenece a más de una se escriben separadas por un espacio ejemp: `dreamschool dreamlabs`
* Luego se hace click en el + de Languages para hacer lo mismo en el otro idioma

#### Sección donde se muestra cada proyecto
```
single/single-cat-portafolio.php
single/single-cat-portfolio.php
```
Se puede modificar en las plantillas.
`single/single-cat-portfolio.php` y `single/single-cat-portafolio.php`

***
### Tips
```
header-tips.php
category-tips.php
category-tips-es.php
```
Solo se puede modificar en las plantillas.
`category-tips.php` y `category-tips-es.php`

#### Para agregar un tip 
* se agrega una nueva entrada.
* Se coloca el título del tip en el título de las entradas.
* Se selecciona el idioma.
* El contenido no se usa.
* Se selecciona la categoría: `Tips/Tips-es`
* Se agrega la imagen destacada si la tiene.
* En el  extracto se coloca un breve resumen del tip. Esto es lo que se podrá leer en la pestaña del tip.
* Luego se añade un nuevo campo personalizado para el **Link** que llevará al artículo original:
  - En nombre seleccionas `Tips-link-externo`.
  - En valor el **Link** que llevará al artículo original.
* Luego si se va a usar una imagen del artículo. Se añade un nuevo campo personalizado para la  **url de la imagen**:
  - En nombre seleccionas `Tips-link-imagen`.
  - En valor la `url` de la imagen.
* Luego se hace click en el + de Languages para hacer lo mismo en el otro idioma
***
### Social
```
header-social.php
page-social.php
```
Se puede modificar en la plantilla.
`page-social.php`.

Además la sección donde se muestran las columnas de facebook y twitter se pueden modificar en la pagina `Social` que se encuentra en la sección paginas del área administrativa de wordpress.
***
### Empleos
```
header-social.php
page-jobs.php
page-empleos.php
```
Se puede modificar en las plantillas.
`page-jobs.php` y `page-empleos.php`.

Además la seccion donde se muestra el contenido escrito se puede modificar en las paginas:
`We are hiring` **ingles** y `Empleos` **español** que se encuentran en la sección paginas del área administrativa de wordpress.