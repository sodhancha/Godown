from django.contrib import admin
import nested_admin
# Register your models here.

from .models import Invoice, Items
from inventory.models import Product_variant

class ItemsInline(nested_admin.NestedStackedInline):
    model = Items
    extra = 3

class InvoiceAdmin(nested_admin.NestedModelAdmin):
    inlines = [ItemsInline]
    list_display = ['name','address','contact']
    search_fields = ['name','address','contact']

admin.site.register(Invoice, InvoiceAdmin)