from django.db import models

# Create your models here.


class Equipment(models.Model):

    idNumber = models.IntegerField(),
    local = models.TextField(),
    image = models.ImageField(upload_to='uploads/')

    def __str__(self):
        return self.idNumber
