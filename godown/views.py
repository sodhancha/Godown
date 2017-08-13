# from django.shortcuts import render

# Create your views here.

from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse
from django.template import loader


def index(request):
	
	return HttpResponse("Hello World!!")

def contact(request):

	template = loader.get_template('contact.html')
	context = {
		'title': 'Contact Us',
	}
	return HttpResponse(template.render(context, request))
	
	
