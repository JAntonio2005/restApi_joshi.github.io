require('dotenv').config();

module.exports = {
  development: {
    url: process.env.DEV_DATABASE_URL,
    dialect: 'postgres',
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false
      }
    }
  },
  test: {
    url: process.env.TEST_DATABASE_URL,
    dialect: 'postgres'
  },
  production: {
    url: process.env.DEV_DATABASE_URL,  // Reutilizamos esta variable para Render
    dialect: 'postgres',
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false
      }
    }
  }
};
