
# Lab6web

## Descripción

Este proyecto es una API para gestionar series de televisión. Permite realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre una base de datos de series. Además, incluye funcionalidades adicionales para votar las series, actualizar su estado y manejar los episodios vistos.

---

## Tabla de Contenidos

1. [Instalación](#instalación)
2. [Uso](#uso)
3. [Rutas API](#rutas-api)
4. [Tecnologías](#tecnologías)
5. [Contribución](#contribución)
6. [Licencia](#licencia)

---

## Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/tu-usuario/nombre-del-repositorio.git
   ```

2. **Navegar a la carpeta del proyecto:**
   ```bash
   cd nombre-del-repositorio
   ```

3. **Instalar dependencias:**
   Este proyecto usa Go. Asegúrate de tener Go instalado en tu máquina. Puedes descargarlo desde [aquí](https://golang.org/dl/).

4. **Configurar la base de datos:**
   - Asegúrate de tener configurada la base de datos MySQL o PostgreSQL.
   - Ajusta los parámetros de conexión a la base de datos en el archivo `db/config.go` (si es necesario).

5. **Ejecutar el servidor:**
   Para iniciar el servidor, corre el siguiente comando en tu terminal:
   ```bash
   go run main.go
   ```

   Esto iniciará el servidor en el puerto `8080` de manera predeterminada.

---

## Uso

Una vez que el servidor esté corriendo, puedes usar herramientas como **Postman** o **cURL** para hacer peticiones HTTP a los siguientes endpoints.

**Base URL**: `http://localhost:8080/api/series`

---

## Rutas API

| Método   | Ruta                          | Descripción                                           |
|----------|--------------------------------|-------------------------------------------------------|
| `GET`    | `/api/series`                  | Obtiene todas las series de la base de datos.         |
| `GET`    | `/api/series/{id}`             | Obtiene una serie específica por su ID.               |
| `POST`   | `/api/series`                  | Crea una nueva serie.                                |
| `PUT`    | `/api/series/{id}`             | Actualiza una serie existente.                       |
| `DELETE` | `/api/series/{id}`             | Elimina una serie por su ID.                         |
| `PATCH`  | `/api/series/{id}/episode`     | Incrementa el episodio visto de una serie.           |
| `PATCH`  | `/api/series/{id}/upvote`      | Aumenta el ranking de una serie.                     |
| `PATCH`  | `/api/series/{id}/downvote`    | Disminuye el ranking de una serie.                   |
| `PATCH`  | `/api/series/{id}/status`      | Actualiza el estado de una serie.                    |

---

### Ejemplo de Uso de la API

#### 1. **Obtener todas las series:**
   ```bash
   curl -X GET http://localhost:8080/api/series
   ```

#### 2. **Crear una nueva serie:**
   ```bash
   curl -X POST http://localhost:8080/api/series \
     -H "Content-Type: application/json" \
     -d '{
       "title": "Breaking Bad",
       "status": "Watching",
       "last_episode_watched": 4,
       "total_episodes": 10,
       "ranking": 5
     }'
   ```

#### 3. **Actualizar el estado de una serie:**
   ```bash
   curl -X PATCH http://localhost:8080/api/series/1/status \
     -H "Content-Type: application/json" \
     -d '{"status": "Completed"}'
   ```

#### 4. **Incrementar episodio de una serie:**
   ```bash
   curl -X PATCH http://localhost:8080/api/series/1/episode
   ```

---

## Tecnologías

- **Go (Golang)**: Lenguaje principal usado para la API.
- **MySQL/PostgreSQL**: Base de datos utilizada para almacenar la información de las series.
- **Gorilla Mux**: Librería para el enrutamiento de las peticiones HTTP.
- **CORS**: Configuración de CORS para permitir peticiones desde cualquier origen.

---

## Contribución

¡Las contribuciones son bienvenidas! Si deseas mejorar el proyecto, sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b nueva-funcionalidad`).
3. Realiza los cambios y haz un commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Haz un push a tu rama (`git push origin nueva-funcionalidad`).
5. Abre un Pull Request.

---

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - mira el archivo [LICENSE](LICENSE) para más detalles.

---

### Consejos para personalizar el README:
- **Descripción del proyecto**: Intenta ser breve pero explicativo, explicando qué hace tu proyecto, cómo se usa y qué beneficios ofrece.
- **Tecnologías**: Enumera las tecnologías usadas, así las personas sabrán si el proyecto es relevante para ellos.
- **Contribución**: Explica cómo otros desarrolladores pueden contribuir, esto es útil si el proyecto tiene el potencial de ser de código abierto.

---

