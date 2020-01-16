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
define('AUTH_KEY',         '3/rZ3PVCja813wnesEOoyz7oyP03EJm4cMjC7V5NLg6c8G3XoEcjTS7I6nbF38Cc7DxB3O7Eq3YwXsoGxyFafw==');
define('SECURE_AUTH_KEY',  'vz/64atZcdMBKGbchwTmc6Q1dDLnj+X4Xkx9N8MLMTEq+2O7pQoLivkA2dFlp0vUrcGSR6oc8SxYv750q1sX3g==');
define('LOGGED_IN_KEY',    'DRXgHAeC41PwjF6hRwPY9mk8gk2cC0VA1E9YxGUSckKyH8Hxc7Dt1meyRYEZotq1v9ZMjxr4bibwLn/t/FhfrQ==');
define('NONCE_KEY',        '7J5jUPGaz7S/wwyM923+ifnaFL5vtQxGcpQUZ6vshSuiJ/mryDgMniHCbTT3WkgubozGuiecgafV350slxCl6A==');
define('AUTH_SALT',        '5d/BF6Bf5CMF6FJmWgrctCGn0w5PDYijUbBMLs7/SJUaiYinT6XScTw31ck5xwrNJZ6XlrU1oSXkaTeNF8ekew==');
define('SECURE_AUTH_SALT', 'V71arIuwWL0SSWGt8irxB7DcfQu08e3f/vstIjiHpMMTbS2sjyuAZ4iv0Za3MEe3fDou5KyKp8VlrHDTXQfoZg==');
define('LOGGED_IN_SALT',   'tWlnCc/QWwWkMh6OWXtt6hy4oDkiLTD/4UfFX9dr9hxHPnTMkCp5KZLjFMMpT6YyJuAb8vHfQ1kzhA7Q+Z2/ag==');
define('NONCE_SALT',       '9gApRgqFoEWjhrDUsEQBrQI7ByyYT+O/AKiVMbUZzRIKdAw0tMp697Q4PuV0WmFotvW8HiKjwNPF1v7GrxBexw==');

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
