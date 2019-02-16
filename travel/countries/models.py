from django.db import models

# Create your models here.
from django.db import models

# Create your models here.
class Country(models.Model):
	country_name=models.CharField(max_length=50)
	country_rate=models.IntegerField()
	def __str__(self):
		return self.country_name


class City(models.Model):
	city_name=models.CharField(max_length=50)
	city_rate=models.IntegerField()
	city_country=models.ForeignKey(Country)
	def __str__(self):
		return self.city_name




class Location(models.Model):
	location_name=models.CharField(max_length=50)
	location_city=models.ForeignKey(City)
	def __str__(self):
		return self.location_name

class Hotel(models.Model):
	hotel_name=models.CharField(max_length=50)
	hotel_city=models.ForeignKey(City)
	def __str__(self):
		return self.hotel_name
