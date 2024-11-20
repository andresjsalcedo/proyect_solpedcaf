# Generated by Django 5.1.1 on 2024-11-08 15:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('solpedcaf', '0028_broca_urldestino_roya_urldestino'),
    ]

    operations = [
        migrations.CreateModel(
            name='usuario',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=20)),
                ('apellidos', models.CharField(max_length=20)),
                ('edad', models.PositiveIntegerField()),
                ('f_nacimiento', models.DateField()),
                ('rol', models.IntegerField(blank=True, choices=[(1, 'rol 1'), (2, 'rol 2'), (3, 'rol 3'), (4, 'rol 4'), (5, 'rol 5')], null=True)),
            ],
        ),
    ]
