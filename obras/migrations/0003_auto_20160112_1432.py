# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2016-01-12 20:32
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('obras', '0002_auto_20160112_1342'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='obra',
            options={'ordering': ['municipio']},
        ),
    ]
