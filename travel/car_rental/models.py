from django.db import models

# Create your models here.
from django.db import models

# Create your models here.
class CarRentalRequests(models.Model):
    #user_made_request = models.ForeignKey('') 
    requested_time = models.DateTimeField()
    pick_up_point = models.ForeignKey('countries.Location',related_name='pick_up_point')
    destination = models.ForeignKey('countries.Location',related_name='destination')
    def __str__(self):
        return self.pick_up_point