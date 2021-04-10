<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ')RnAA:QR,_Pt_S+;OmsAU)QZu{C^<fPa#QrRTh9xsuH4]eXQw/pvJ.[!N<uuT34~' );
define( 'SECURE_AUTH_KEY',  'BaA-uTl3fo*X@lk#j(z=YAS,a}x]TF_cO0JrxzOZ.B%8Ph|N}0L>VJGbRg1@!v[B' );
define( 'LOGGED_IN_KEY',    'BZ#_y:WQh0,RU8s#SVeRQtUGGKVKSRqLTlC wu!cF?fz3)x(otrb-D9nAK{:GI13' );
define( 'NONCE_KEY',        'S}a;~NR;fPm:6ZX2f/Yf<y,nfG;0Jw*9Uf>76(C^hmX]Fv24,D2~^ta0fOb},LeD' );
define( 'AUTH_SALT',        '@:9TFE8R7{:;m#Vo%$WS23.D_i2L{fGU%7^2f:9}j{.*^r<A5E Xf%!K`5l(4}[ ' );
define( 'SECURE_AUTH_SALT', 'q}FBd$Je5^J7:p3dBn&fyRLBjt8RxRQd3K{h~ l%,ZeZ];GCCMZV_?*r%6rV<IN0' );
define( 'LOGGED_IN_SALT',   '1h^]c8Iu6qT-g&o:~[FV/qw8Y3gd!^2`/vh!F;y%7)1h+Ce4hjM*<~!Eg_^Q_La{' );
define( 'NONCE_SALT',       'x$(8yMzLtGd1^fD5,A9ofTL;H>{I+y*0 Le$bFb|I7p}_%=`o1gA}OT`vPGNRy,n' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
