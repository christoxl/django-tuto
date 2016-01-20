from __future__ import unicode_literals

from django.db import models
from django.utils.encoding import python_2_unicode_compatible


# Create your models here.
@python_2_unicode_compatible
class Municipio(models.Model):
    nombre = models.CharField(max_length=70)
    region = models.CharField(max_length=300, default='')

    class Meta:
        ordering = ['nombre']

    def __str__(self):
        return self.nombre


@python_2_unicode_compatible
class Obra(models.Model):
    # municipio = models.ForeignKey(Municipio, on_delete=models.CASCADE)
    municipios = models.ManyToMany(Municipio)
    descripcion = models.TextField()
    dependencia = models.CharField(max_length=100)
    inversion_ejercida = models.DecimalField(max_digits=20, decimal_places=2)
    avance = models.DecimalField(max_digits=5, decimal_places=2)
    beneficiarios_hombres = models.IntegerField(default=0)
    beneficiarios_mujeres = models.IntegerField(default=0)

    def __str__(self):
        return self.descripcion
