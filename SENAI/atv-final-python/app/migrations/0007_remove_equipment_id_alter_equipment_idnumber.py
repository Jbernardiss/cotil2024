# Generated by Django 4.2.13 on 2024-06-16 18:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_alter_equipment_idnumber_alter_equipment_image_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='equipment',
            name='id',
        ),
        migrations.AlterField(
            model_name='equipment',
            name='idNumber',
            field=models.IntegerField(primary_key=True, serialize=False, verbose_name='Número de Identificação'),
        ),
    ]
