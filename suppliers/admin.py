from django.contrib import admin

# Register your models here.

from suppliers.models import Supplier

class SupplierAdmin(admin.ModelAdmin):
	list_display = ['name','address','contact']
	search_fields = ['name','address','contact']

	def get_queryset( self, request ):
		queryset = super(SupplierAdmin,self).get_queryset(request)
		queryset = queryset.order_by('name')
		return queryset

admin.site.register(Supplier, SupplierAdmin)