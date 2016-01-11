from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Municipio(models.Model):
    nombre = models.CharField(max_length=70)

class Obra(models.Model):

