from django.db import models

import datetime

# Create your models here.

class CarRentalRequests(models.Model):
    user_requested = models.ForeignKey('user_profile.TravelUsers', blank=True, null=True) 
    pick_up_date = models.DateField(default=datetime.date.today)
    Drop_off_date = models.DateField(default=datetime.date.today)
    pick_up_time = models.TimeField(default='00:00')
    Drop_off_time = models.TimeField(default='00:00')
    pick_up_point = models.ForeignKey('countries.Location',related_name='pick_up_point')
    destination = models.ForeignKey('countries.Location',related_name='destination')
    def __str__(self):
        return self.pick_up_point
    def __str__(self):
        return self.destination   
      