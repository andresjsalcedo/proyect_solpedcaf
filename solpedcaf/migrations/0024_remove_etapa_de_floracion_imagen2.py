# Generated by Django 5.1.1 on 2024-10-17 15:21

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('solpedcaf', '0023_etapa_de_crecimiento_imagen2_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='etapa_de_floracion',
            name='imagen2',
        ),
    ]
