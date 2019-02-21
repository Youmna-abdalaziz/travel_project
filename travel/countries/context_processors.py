from django.shortcuts import render
from .models import Country,City,Hotel,Location
from django.http import HttpResponse,HttpResponseRedirect

def add_variable_to_context(request):
	all_countries=Country.objects.all()
<<<<<<< HEAD
	
=======
>>>>>>> f120623aea13ef7e14a82f930c9828875bf90f88
	return {
       	'all_countries':all_countries
    }