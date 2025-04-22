const fs = require('fs');
require('dotenv').config();
const { Pool } = require('pg');

// Configuración de la base de datos
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false, // Asegúrate de que esta opción esté activada
    ca: fs.readFileSync('path/to/aiven-ca-cert.pem').toString(), // Ruta al certificado CA de Aiven
  },
});

// Verificación de la conexión a la base de datos
pool.query('SELECT NOW()', (err, res) => {
  if (err) {
    console.error('Error de conexión a la base de datos:', err.message);
    console.error('Detalles del error:', err);
  } else {
    console.log('Conexión exitosa a la base de datos:', res.rows[0]);
  }
});

// Configuración del servidor
const PORT = process.env.PORT || 8080;
server.listen(PORT, () => console.log(`Server is live at localhost :${PORT}`));
