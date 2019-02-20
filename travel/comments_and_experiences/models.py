from django.db import models

# Create your models here.


class UserExperience(models.Model):
    title = models.CharField(max_length =128)	
    description =models.TextField( help_text=("Enter your experiance here.") )
    city_id = models.ForeignKey('countries.City',blank=True, null=True)
    writer = models.ForeignKey('user_profile.TravelUsers' ,blank=True, null=True)

    def __str__(self):
        return self.title
    def __str__(self):
        return self.description  

class Comments(models.Model):  
    comment =models.CharField(max_length =500)
    experience_id = models.ForeignKey(UserExperience,blank=True, null=True)
    user_commented = models.ForeignKey('user_profile.TravelUsers',blank=True, null=True)  

    def __str__(self):
        return self.comment 


