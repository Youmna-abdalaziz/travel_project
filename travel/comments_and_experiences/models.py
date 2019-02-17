from django.db import models

# Create your models here.


class UserExperience(models.Model):
    title = models.CharField(max_length =30)	
    description =models.CharField(max_length =1000)
    city_id = models.ForeignKey('countries.City')
    writer = models.ForeignKey('user_profile.TravelUsers',related_name='writer')

    def __str__(self):
        return self.title

class Comments(models.Model):  
    comment =models.CharField(max_length =200)
    experience_id = models.ForeignKey(UserExperience)
    user_commented = models.ForeignKey('user_profile.TravelUsers',related_name='user_commented')  

    def __str__(self):
        return self.comment 


