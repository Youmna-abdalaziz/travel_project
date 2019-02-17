from django.db import models
from django.contrib.auth.models import User , AbstractUser



# Create your models here.
class TravelUsers(AbstractUser):

    description = models.CharField(max_length = 300)
   


  
