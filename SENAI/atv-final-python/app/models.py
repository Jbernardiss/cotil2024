from django.db import models

# Create your models here.


class Equipment(models.Model):
    idNumber = models.IntegerField('Número de Identificação', primary_key=True)
    local = models.CharField('Local', max_length=255)
    image = models.ImageField('Foto', upload_to='images/', blank=True, null=True)

    def __str__(self):
        return self.idNumber
