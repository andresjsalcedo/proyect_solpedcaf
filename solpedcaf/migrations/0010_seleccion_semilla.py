# Generated by Django 5.1.1 on 2024-10-07 19:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('solpedcaf', '0009_consejos_para_su_cultivo'),
    ]

    operations = [
        migrations.CreateModel(
            name='seleccion_semilla',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100)),
                ('descripcion', models.TextField()),
                ('a_tener_en_cuenta', models.TextField(null=True)),
                ('a_tener_en_cuenta2', models.TextField(null=True)),
                ('a_tener_en_cuenta3', models.TextField(null=True)),
                ('imagen', models.ImageField(blank=True, null=True, upload_to='modulos')),
            ],
        ),
    ]
