from django.shortcuts import render
from .models import Country,City,Hotel,Location
from django.http import HttpResponse,HttpResponseRedirect

def add_variable_to_context(request):
	all_countries=Country.objects.all()
	
	return {
       	'all_countries':all_countries
    }