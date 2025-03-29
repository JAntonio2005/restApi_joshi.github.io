require('dotenv').config();  // Asegúrate de cargar las variables de entorno

module.exports = {
  development: {
    url: process.env.DEV_DATABASE_URL || 'postgres://default_user:default_password@localhost:5432/devdb',
    dialect: 'postgres',
  },
  test: {
    url: process.env.TEST_DATABASE_URL || 'postgres://default_user:default_password@localhost:5432/testdb',
    dialect: 'postgres',
  },
  production: {
    url: process.env.DATABASE_URL || 'postgres://default_user:default_password@localhost:5432/proddb',
    dialect: 'postgres',
  },
};

