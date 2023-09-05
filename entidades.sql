
/*Pilotos

Atributos: ID de piloto, nombre, apellido, licencia de piloto.
Relaciones: Asociado a la entidad Vuelo como piloto asignado.

Empleados

Atributos: ID de empleado, nombre, apellido, fecha de contratación.
Relaciones: Puede tener una relación con la entidad Aerolínea como empleado de la aerolínea.

Tipo de Empleados

Atributos: ID de tipo de empleado, nombre del tipo (por ejemplo, piloto, asistente de vuelo, personal de tierra).
Relaciones: Puede estar relacionado con la entidad Empleados para determinar la función de un empleado específico.

Avión

Atributos: ID de avión, modelo, capacidad de asientos, año de fabricación.
Relaciones: Asociado a Vuelo para identificar la aeronave asignada a un vuelo.

Sede

Atributos: ID de sede, nombre de la sede, dirección.
Relaciones: Puede estar relacionado con Empleados para identificar la ubicación de la oficina principal.

País

Atributos: ID de país, nombre del país, código de país.
Relaciones: Puede estar relacionado con Sede para determinar el país de ubicación de una sede.

Fecha

Atributos: ID de fecha, fecha (para llevar un registro de fechas importantes).
Relaciones: Puede estar relacionado con diversas entidades para registrar fechas relevantes, como fechas de vuelos o fechas de mantenimiento.

Dirección

Atributos: ID de dirección, calle, ciudad, código postal.
Relaciones: Puede estar relacionado con Empleados o Sedes para almacenar información de dirección.

Vuelo

Atributos: ID de vuelo, número de vuelo, hora de salida, hora de llegada.
Relaciones: Se relaciona con Pilotos, Avión, Historia de Vuelo, Reserva/Boletos, entre otros, para gestionar la información de vuelos.

Aerolínea

Atributos: ID de aerolínea, nombre de la aerolínea, código IATA.
Relaciones: Puede estar relacionada con Vuelo y Empleados para identificar la aerolínea responsable de un vuelo y el personal que trabaja en ella.

Tarifa/Precio

Atributos: ID de tarifa/precio, tipo de tarifa, precio base.
Relaciones: Se relaciona con Vuelo para definir las tarifas aplicables a los vuelos.

Reserva/Boletos

Atributos: ID de reserva, número de boleto, fecha de reserva.
Relaciones: Está relacionado con Vuelo, Cliente, Equipaje y Tarifa/Precio para gestionar las reservas de vuelos y los boletos emitidos.

Equipaje

Atributos: ID de equipaje, peso, contenido.
Relaciones: Relacionado con Reserva/Boletos para asociar el equipaje con una reserva específica.

Documento de Viaje

Atributos: ID de documento, tipo de documento, número de documento, fecha de vencimiento.
Relaciones: Puede estar relacionado con Cliente para almacenar información de documentos de identificación.

Servicio a Bordo

Atributos: ID de servicio a bordo, tipo de servicio, descripción.
Relaciones: Se relaciona con Vuelo para definir los servicios disponibles durante el vuelo.

Política de Cancelación

Atributos: ID de política de cancelación, condiciones de cancelación, tarifas de cancelación.
Relaciones: Puede estar relacionado con Vuelo y Reserva/Boletos para aplicar políticas de cancelación.

Programa de Lealtad

Atributos: ID de programa, nombre del programa, beneficios.
Relaciones: Puede estar relacionado con Cliente para rastrear la membresía en programas de lealtad.

Servicio al Cliente

Atributos: ID de servicio al cliente, nombre, número de contacto.
Relaciones: Puede estar relacionado con Cliente para gestionar el servicio al cliente y las consultas.

Medida de Seguridad

Atributos: ID de medida de seguridad, descripción de la medida, fecha de implementación.
Relaciones: Puede estar relacionado con Vuelo para registrar medidas de seguridad específicas.

Tripulación

Atributos: ID de tripulación, función, nombre de miembros de la tripulación.
Relaciones: Está relacionado con Vuelo para asignar miembros de la tripulación a vuelos específicos.

Mantenimiento

Atributos: ID de mantenimiento, tipo de mantenimiento, fecha de mantenimiento.
Relaciones: Se relaciona con Avión para gestionar el mantenimiento de las aeronaves.

Historia de Vuelo

Atributos: ID de historia de vuelo, registros de vuelo anteriores.
Relaciones: Está relacionado con Vuelo para mantener un historial de vuelos previos.

PQRS (Peticiones, Quejas, Reclamos y Sugerencias)

Atributos: ID de PQRS, tipo de PQRS, descripción.
Relaciones: Puede estar relacionado con Cliente para registrar las interacciones de los clientes con la aerolínea. */