from django.db import models

class Instalacion(models.Model):
    nombre = models.CharField(max_length=100)
    tipo = models.CharField(max_length=50)
    ubicacion = models.CharField(max_length=150)
    descripcion = models.TextField()
    estado = models.CharField(
        max_length=20, 
        choices=[
            ('disponible', 'Disponible'),
            ('mantenimiento', 'Fuera de Servicio'),
        ],
        default = 'disponible',
    )

class Reserva(models.Model):
    instalacion = models.ForeignKey(
        Instalacion,
        on_delete=models.PROTECT,
        related_name='reservas',
    )
    fecha = models.DateField()
    hora_inicio = models.TimeField()
    hora_fin = models.TimeField()
    estado = models.CharField(
        max_length=20,
        choices=[
            ('pendiente', 'Pendiente'),
            ('confirmada', 'Confirmada'),
            ('cancelada', 'Cancelada'),
        ],
        default = 'pendiente',
    )