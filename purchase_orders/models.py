from django.db import models

from inventory.models import Product_variant
from suppliers.models import Supplier

# Create your models here.

class Purchase_order( models.Model ):
	supplier_id = models.ForeignKey(Supplier)
	created_at = models.DateTimeField('date published')

	
class Item( models.Model ):
	purchase = models.ForeignKey(Purchase_order)
	product = models.ForeignKey(Product_variant)
	quantity = models.PositiveIntegerField()
	price = models.PositiveIntegerField()
