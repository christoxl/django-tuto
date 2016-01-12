from django.contrib import admin

# Register your models here.
from .models import Municipio, Obra


class ObraAdmin(admin.ModelAdmin):
    ordering = ['municipios',]

admin.site.register(Municipio)
admin.site.register(Obra, ObraAdmin)
