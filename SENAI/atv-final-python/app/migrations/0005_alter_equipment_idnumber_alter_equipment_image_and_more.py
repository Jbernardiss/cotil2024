# Generated by Django 4.2.13 on 2024-06-14 18:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_alter_equipment_idnumber'),
    ]

    operations = [
        migrations.AlterField(
            model_name='equipment',
            name='idNumber',
            field=models.IntegerField(blank=True, null=True, verbose_name='Número de Identificação'),
        ),
        migrations.AlterField(
            model_name='equipment',
            name='image',
            field=models.ImageField(upload_to='images/'),
        ),
        migrations.AlterField(
            model_name='equipment',
            name='local',
            field=models.CharField(max_length=255),
        ),
    ]
