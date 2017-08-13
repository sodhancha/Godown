# from django.shortcuts import render

# Create your views here.

from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse
from django.template import loader

from .models import Product, Product_variant, Product_detail, Variant, Variant_value

def index(request):
	
	product_list = Product.objects.all()[:5]
	template = loader.get_template('inventory/index.html')
	context = {
		'product_list': product_list,
	}
	return HttpResponse(template.render(context, request))

def detail(request, product_id):

	product = get_object_or_404(Product, pk=product_id)

	variant_list = Variant.objects.all()
	
	product_variant = Product_variant.objects.filter(product_id=product_id)


	variant_ids = []

	for pv in product_variant:
		
	 	product_detail = Product_detail.objects.filter(product_variant_id=pv.id)

	 	for p in product_detail:

 		
 			variant_id = p.variant_value_id
 			variant_ids.append(variant_id)

	
	for variant in variant_list:
		variant_value = Variant_value.objects.filter(variant_id=variant.id) 
		# return HttpResponse(variant_value)

	# return HttpResponse(variant_list)
	
	template = loader.get_template('inventory/detail.html')
	context = {
		'product': product,
		'variant_list': variant_list,
	}
	return HttpResponse(template.render(context, request))


  
