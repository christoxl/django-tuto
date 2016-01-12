from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Municipio(models.Model):
    nombre = models.CharField(max_length=70)


class Obra(models.Model):
    municipio = models.ForeignKey(Municipio, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=800)
    inversion_ejercida = models.DecimalField(max_digits=20, decimal_places=2)
    avance = models.DecimalField(max_digits=5, decimal_places=2)
    beneficiarios_hombres = models.IntegerField(default=0)
    beneficiarios_mujeres = models.IntegerField(default=0)




