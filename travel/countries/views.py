from django.shortcuts import render
from .models import Country,City,Hotel,Location
from django.http import HttpResponse,HttpResponseRedirect
from  comments_and_experiences.models import UserExperience,Comments

# Create your views here.
def display_country(request,country_id):
	country_info=Country.objects.get(id=eval(country_id))
	cities_info=City.objects.filter(city_country_id=country_id)
	context={'country':country_info,'cities':cities_info}
	return render (request,'country.html',context)



def display_city(request,city_id):
	city_info=City.objects.get(id=eval(city_id))
	locations_info=Location.objects.filter(location_city_id=city_id)
	experiances_info=UserExperience.objects.filter(city_id=city_id)
	context={'city':city_info,'locations':locations_info, 'exp':experiances_info}
	return render (request,'city.html',context)

def home(request):
	topcountries=Country.objects.all().order_by('country_rate').reverse()[:6]
	topcities=City.objects.all().order_by('city_rate').reverse()[:6]
	context={'highcountries':topcountries,'highcities':topcities}
	return render (request,'home.html',context)	
