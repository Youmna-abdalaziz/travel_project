from django.db import models

# Create your models here.
from django.db import models

# Create your models here.

class HotelReservationRequest(models.Model):
    requested_hotel = models.ForeignKey('countries.Hotel')
    #user_made_request = models.ForeignKey('') 
    from_date = models.DateField()
    to_date = models.DateField()
    no_of_adults = models.IntegerField()
    def __str__(self):
	    return self.requested_hotel
