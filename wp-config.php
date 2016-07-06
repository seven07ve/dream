<?php
/** 
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define('DB_NAME', 'dream_db');

/** Tu nombre de usuario de MySQL */
define('DB_USER', 'root');

/** Tu contraseña de MySQL */
define('DB_PASSWORD', '');

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define('DB_HOST', 'localhost');

/** Codificación de caracteres para la base de datos. */
define('DB_CHARSET', 'utf8mb4');

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '2a-zp=q4=<ooy],C*qfwC,%<3<?i~9zzyJzC_(dO7+UW^!z`}=(JtQoo0xRWt:SP');
define('SECURE_AUTH_KEY', 'eE.e4W%wqqd~%[$tD.Q|};0Gey+aNG#PZ>H_t-,Wc9_{I3pI$lPk]i`.?$PcNu4Z');
define('LOGGED_IN_KEY', 'Et(nnPJZ{-SAG}0 8I<]_5f)&fB<m.[4WN hQ(6&+:M5^<,]6qDeGv&A&:OYGN7.');
define('NONCE_KEY', 'NAYZYQOsfIA]@DQLO7P#a5/,ChBo{N8K0M42cui`Xw)P;b+A6vTc_x4*43o1Wt:y');
define('AUTH_SALT', '~uR;B^jl &Z 2*G[-[<UgA`p442Bm-}9=%4ZI81^c$13 8~&]41g7t}%KcBO/QO ');
define('SECURE_AUTH_SALT', '~ZW@`.+[ U<MN-u3=]>z]>I5Dx|~^rG&uXr,/:;)X*gq3AQ`^6B$gno9xU;o*X :');
define('LOGGED_IN_SALT', '~5s9j?gS{t!?bZz0gUWlxaca[+T/x@Ln.WxB}:F_qEr}tT2f!4?:nNZ;7d?^#73A');
define('NONCE_SALT', '(%TVdH}_6:pA&0|>8{]_C $HP<(/MvYdxvrtV<qdi`>mk!:IWBRCk-MBJkiXxR6F');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix  = 'dl_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

