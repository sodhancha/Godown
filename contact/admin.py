from django.contrib import admin

# Register your models here.

from .models import Contact

class ContactAdmin(admin.ModelAdmin):
    
    list_display = ['name','email','message']
    search_fields = ['name','email']

    def get_queryset( self, request ):
        queryset = super(ContactAdmin,self).get_queryset(request)
        queryset = queryset.order_by('name')
        return queryset

admin.site.register(Contact, ContactAdmin)

