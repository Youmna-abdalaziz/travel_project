from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save


# Create your models here.

class ExtendedUser(models.Model):
    user=models.OneToOneField(User)
    details=models.CharField(max_length =500)
   
    def __str__(self):
        return self.user.username

    def create_profile(sender , **kwargs):
        if kwargs['created']:
            user_profile=ExtendedUser.objects.create(user=kwargs['instance'])    

   
post_save.connect(ExtendedUser.create_profile, sender=User)
  
