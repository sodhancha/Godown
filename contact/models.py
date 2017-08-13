from django.db import models

# Create your models here.

class Contact( models.Model ):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
    

    def __str__(self):              # __unicode__ on Python 2
        return self.name



