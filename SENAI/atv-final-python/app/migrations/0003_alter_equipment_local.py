# Generated by Django 4.2.13 on 2024-06-14 18:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_remove_equipment_photo_equipment_idnumber_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='equipment',
            name='local',
            field=models.CharField(max_length=100),
        ),
    ]
