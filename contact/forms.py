from django import forms
from contact.models import Contact

class ContactForm(forms.ModelForm):
    name = forms.CharField(label='Your name', max_length=100)
    email = forms.EmailField(label='Your email', max_length=100)
    message = forms.CharField( widget=forms.Textarea )

    class Meta:
    	model = Contact
    	fields = ('name','email','message')