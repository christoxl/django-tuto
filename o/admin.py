from django.contrib import admin

# Register your models here.
from .models import Municipio, Dependencia, Obra

admin.site.register(Municipio)
admin.site.register(Dependencia)
admin.site.register(Obra)
