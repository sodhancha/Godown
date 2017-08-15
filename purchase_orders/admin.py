from django.contrib import admin
import nested_admin
# Register your models here.

from .models import Purchase_order, Item
from suppliers.models import Supplier
from inventory.models import Product_variant

class ItemInline(nested_admin.NestedStackedInline):
    model = Item
    extra = 3

class PurchaseOrderAdmin(nested_admin.NestedModelAdmin):
    inlines = [ItemInline]
    list_display = ['id']
    search_fields = ['id']

admin.site.register(Purchase_order, PurchaseOrderAdmin)