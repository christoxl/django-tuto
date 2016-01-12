from django.contrib import admin

# Register your models here.
from .models import Municipio, Obra

admin.site.register(Municipio, Obra)
