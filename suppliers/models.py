from django.db import models

# Create your models here.

class Supplier( models.Model ):
    name = models.CharField(max_length=70)
    contact = models.CharField(max_length=70)
    address = models.CharField(max_length=70)

    def __str__(self):              # __unicode__ on Python 2
        return self.name