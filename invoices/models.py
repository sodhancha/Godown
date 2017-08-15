from django.db import models

# Create your models here.
from inventory.models import Product_variant


# Create your models here.

class Invoice( models.Model ):
	name = models.CharField( max_length=200 )
	address = models.CharField( max_length=200 )
	contact = models.CharField( max_length=200 )
	created_at = models.DateTimeField('date published')

	
class Items( models.Model ):
	invoice = models.ForeignKey(Invoice)
	product = models.ForeignKey(Product_variant)
	quantity = models.PositiveIntegerField()
	price = models.PositiveIntegerField()