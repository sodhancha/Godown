from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponse
from django.template import loader
from .forms import ContactForm
# Create your views here.

def index11(request):
	
	template = loader.get_template('contact.html')
	context = {
		'title': 'Contact Us',
	}
	return HttpResponse(template.render(context, request))

def index(request):
	
	if request.method == 'POST':

		form = ContactForm(request.POST)

		if form.is_valid():

			form.save()

			# name = form.cleaned_data('name')

			# email = form.cleaned_data('email')

			# message = form.cleaned_data('message')

			return redirect("")
	else:

		form = ContactForm()

		return render(request, 'contact.html', {'form': form})