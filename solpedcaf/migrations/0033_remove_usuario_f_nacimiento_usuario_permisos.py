# Generated by Django 5.1.1 on 2024-11-18 13:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('solpedcaf', '0032_usuario_rol'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='usuario',
            name='f_nacimiento',
        ),
        migrations.AddField(
            model_name='usuario',
            name='permisos',
            field=models.CharField(max_length=50, null=True),
        ),
    ]