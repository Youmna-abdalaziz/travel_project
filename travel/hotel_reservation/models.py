from django.db import models


# Create your models here.
adult_CHOICES = (
        ('1', '1 adult'),
        ('2', '2 adults'),
        ('3', '3 adults'),
        ('4', '4 adults'),
    )
class HotelReservationRequest(models.Model):
    requested_hotel = models.ForeignKey('countries.Hotel')
    user_requested = models.ForeignKey('user_profile.TravelUsers',related_name='hotel_user') 
    from_date = models.DateField()
    to_date = models.DateField()
    no_of_adults = models.CharField(max_length=1, choices=adult_CHOICES)
    def __str__(self):
	    return self.requested_hotel
