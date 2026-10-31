-- Datos de prueba para ReservaDeportiva (MySQL 8 / Django)
-- 10 instalaciones y 100 reservas ficticias.
-- Ejecutar UNA sola vez en la base de datos reserva_deportiva,
-- despues de python manage.py migrate.
-- No ejecutar sobre datos reales sin revisar: este archivo AGREGA registros.
USE reserva_deportiva;

START TRANSACTION;

-- 1. Instalaciones
INSERT INTO instalaciones_instalacion (nombre, tipo, ubicacion, descripcion, estado) VALUES
('Cancha Central', 'Fútbol', 'La Plata, Huila', 'Cancha para fútbol recreativo y entrenamientos.', 'disponible'),
('Coliseo Municipal', 'Baloncesto', 'La Plata, Huila', 'Espacio cubierto para baloncesto y eventos deportivos.', 'disponible'),
('Cancha de Voleibol Norte', 'Voleibol', 'La Plata, Huila', 'Cancha para partidos y prácticas de voleibol.', 'disponible'),
('Cancha Sintética Los Pinos', 'Fútbol 5', 'La Plata, Huila', 'Cancha sintética para encuentros de fútbol cinco.', 'disponible'),
('Polideportivo El Jardín', 'Multideporte', 'La Plata, Huila', 'Espacio para diferentes actividades deportivas.', 'disponible'),
('Cancha Barrio San Rafael', 'Fútbol', 'La Plata, Huila', 'Cancha comunitaria para fútbol y entrenamiento.', 'disponible'),
('Cancha de Baloncesto Sur', 'Baloncesto', 'La Plata, Huila', 'Cancha al aire libre para baloncesto.', 'disponible'),
('Cancha de Voleibol La Esperanza', 'Voleibol', 'La Plata, Huila', 'Espacio comunitario para voleibol.', 'disponible'),
('Cancha Sintética El Mirador', 'Fútbol 5', 'La Plata, Huila', 'Cancha sintética para partidos amistosos.', 'disponible'),
('Polideportivo La Rivera', 'Multideporte', 'La Plata, Huila', 'Instalación para prácticas deportivas comunitarias.', 'disponible');

-- 2. Reservas: 10 fechas por cada instalacion; sin cruces de horarios.
-- Los identificadores se buscan por nombre, no se asumen IDs fijos.
INSERT INTO instalaciones_reserva (fecha, hora_inicio, hora_fin, estado, instalacion_id) VALUES
('2026-11-01', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '14:00:00', '15:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '08:00:00', '09:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-01', '10:00:00', '11:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '14:00:00', '15:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '10:00:00', '11:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-02', '14:00:00', '15:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '10:00:00', '11:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '08:00:00', '09:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '14:00:00', '15:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-03', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '14:00:00', '15:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '08:00:00', '09:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-04', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '08:00:00', '09:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '14:00:00', '15:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '10:00:00', '11:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-05', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '10:00:00', '11:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '08:00:00', '09:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-06', '14:00:00', '15:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '14:00:00', '15:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '08:00:00', '09:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-07', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '08:00:00', '09:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '14:00:00', '15:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '10:00:00', '11:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-08', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '08:00:00', '09:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '16:00:00', '17:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '10:00:00', '11:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '08:00:00', '09:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-09', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '10:00:00', '11:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Central' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Coliseo Municipal' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '16:00:00', '17:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol Norte' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '08:00:00', '09:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética Los Pinos' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo El Jardín' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '14:00:00', '15:30:00', 'pendiente', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Barrio San Rafael' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '16:00:00', '17:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Baloncesto Sur' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '08:00:00', '09:30:00', 'cancelada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha de Voleibol La Esperanza' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '10:00:00', '11:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Cancha Sintética El Mirador' ORDER BY id DESC LIMIT 1)),
('2026-11-10', '14:00:00', '15:30:00', 'confirmada', (SELECT id FROM instalaciones_instalacion WHERE nombre = 'Polideportivo La Rivera' ORDER BY id DESC LIMIT 1));

COMMIT;

-- Consultas de comprobacion:
SELECT COUNT(*) AS total_instalaciones FROM instalaciones_instalacion;
SELECT COUNT(*) AS total_reservas FROM instalaciones_reserva;
SELECT i.nombre, COUNT(r.id) AS cantidad_reservas
FROM instalaciones_instalacion AS i
LEFT JOIN instalaciones_reserva AS r ON r.instalacion_id = i.id
GROUP BY i.id, i.nombre
ORDER BY i.nombre;
