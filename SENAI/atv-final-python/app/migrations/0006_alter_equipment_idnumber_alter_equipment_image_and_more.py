# Generated by Django 4.2.13 on 2024-06-14 19:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0005_alter_equipment_idnumber_alter_equipment_image_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='equipment',
            name='idNumber',
            field=models.IntegerField(default=-1, verbose_name='Número de Identificação'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='equipment',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='images/', verbose_name='Foto'),
        ),
        migrations.AlterField(
            model_name='equipment',
            name='local',
            field=models.CharField(max_length=255, verbose_name='Local'),
        ),
    ]
