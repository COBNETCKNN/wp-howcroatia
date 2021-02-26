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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zQw3rq/DmYp1JNUP0LfrzBZq2lkKGxOKP7AfjELoZv/sblCHPrukL37gE2EF38Y0pQeL1tFgc1ZXRRKUKkZ7PA==');
define('SECURE_AUTH_KEY',  'YDU2JGRKSWr0lmrLk0sZ71UGv0oQoIKFyRYq9bGaITCsgWmjvFpsd2hvd0jrG+dT5QLaXDbwtd/VGz3ymTt7Qw==');
define('LOGGED_IN_KEY',    'c90BkFweBtwiLnXSYSdKojukDIvC/PZQt2LARY0/wEOeOtqJhNbvSqRp+vEBeVRMkZxnd4gvaq1JNGOlxXWoGg==');
define('NONCE_KEY',        '6d5+tqZ5TwUzosjmatUJ79OFC2saFNGpFvkXJlIdK47hBv1NAdWYLjdAq8uas5LMVSIraPiEvqeHvA6Gecs3PA==');
define('AUTH_SALT',        'ysXCupuQc0eU8ujn/1ov+lA7cqNPP40M4rlxmfB+FK8zge6H5hA7ksQlF9QLMbcKE59sdHuPXqPHyXOP/G+8dw==');
define('SECURE_AUTH_SALT', '/aSg9prtXtENpK36q/onclSj9kcHu209B62dpN5SG1ifIr4Roe02EkyWys+h1ANfiOdcYKoAh+Poh4VhUDPC+Q==');
define('LOGGED_IN_SALT',   'GdbXij1hIeTn3snvSytbcc9As8dzZkvZcKqU0aNpe3P9uFHRBkgUlP8TC5k5i99wN7M0+AWCUf/par1H9HrLZA==');
define('NONCE_SALT',       '4c+P0K+YVMVYqd9iiXfhD2+LzTU0mlLFohcY7ZXiu6Vlap4r8KgDdCW3zYp6JCauEzCFMPx8UUpF5YZnitZ/qA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
