from django.db import models

# Create your models here.


class Equipment(models.Model):

    idNumber = models.IntegerField(),
    local = models.CharField(max_length=100)
    photo = models.ImageField(upload_to='images/')

    def __str__(self):
        return self.idNumber
