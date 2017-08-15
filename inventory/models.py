from django.db import models

# Create your models here.

class ProductManager(models.Manager):
    def get_queryset(self):
        return super(ProductManager,self).get_queryset().filter(name="Goldstar shoe")

class Product( models.Model ):
    name = models.CharField(max_length=70)
    description = models.TextField()
    image = models.ImageField(upload_to="images", blank=True)

    # goldstar = ProductManager()

    def __str__(self):              # __unicode__ on Python 2
        return self.name

    # def getVariants(self):
    #     return Variant_value.objects.filter(product=self)


class Product_variant( models.Model ):
    name = models.CharField( max_length=200 )
    sku = models.CharField( max_length=60 )
    price = models.PositiveIntegerField()
    quantity = models.PositiveIntegerField()
    product = models.ForeignKey( Product, on_delete=models.CASCADE)

    def __str__(self):              # __unicode__ on Python 2
        return self.name

    # def getVariants(self):
    #     return Variants.objects.filter(product=self)

class Variant( models.Model ):
    name = models.CharField(max_length=70)

    def __str__(self):              # __unicode__ on Python 2
        return self.name

class Variant_value( models.Model ):
    value = models.CharField( max_length=200 )
    variant = models.ForeignKey( Variant, on_delete=models.CASCADE)

    def __str__(self):              # __unicode__ on Python 2
        return self.value

class Product_detail( models.Model ):
   
    variant_value = models.ForeignKey( Variant_value, on_delete=models.CASCADE)
    product_variant = models.ForeignKey( Product_variant, on_delete=models.CASCADE)

   