from django.db import models

# Create your models here.

class User(models.Model):
    user_name =models.CharField(max_length =100)
    name =models.CharField(max_length =100)
     password=models.CharField(max_length =100)
    is_admin=models.BooleanField(initial=False)
    status=models.BooleanField(initial=False)
    def __str__(self):
        return self. name

  
