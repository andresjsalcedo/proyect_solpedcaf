# Generated by Django 5.1.1 on 2024-10-09 02:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('solpedcaf', '0013_fertilizacion'),
    ]

    operations = [
        migrations.CreateModel(
            name='soluciones_para_su_cultivo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('afectacion', models.CharField(max_length=100)),
                ('descripcion', models.TextField()),
                ('urlDestino', models.CharField(max_length=200, null=True)),
            ],
        ),
    ]
