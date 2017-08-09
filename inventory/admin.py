from django.contrib import admin
import nested_admin

# Register your models here.

from .models import Product, Product_variant, Variant, Variant_value, Product_detail

admin.site.site_header = 'Godown'

class Variant_valueAdmin(nested_admin.NestedModelAdmin):
	
    list_display = ['value','variant']
    list_filter = ('value','variant')
    search_fields = ['value','variant__name']


admin.site.register(Variant)
admin.site.register(Variant_value, Variant_valueAdmin)





class Product_detailInline(nested_admin.NestedStackedInline):
    model = Product_detail
    extra = 2
    # sortable_field_name = "position"

class Product_variantInline(nested_admin.NestedStackedInline):
    model = Product_variant
    # sortable_field_name = "position"
    extra = 3
    inlines = [Product_detailInline]

class ProductAdmin(nested_admin.NestedModelAdmin):
    inlines = [Product_variantInline]
    list_display = ['name','description']
    search_fields = ['name']

admin.site.register(Product, ProductAdmin)


class Product_variantAdmin(nested_admin.NestedModelAdmin):
    list_display = ['product','sku','price','quantity']
    search_fields = ['product__name','sku','price','quantity']

 
   
admin.site.register(Product_variant, Product_variantAdmin)

