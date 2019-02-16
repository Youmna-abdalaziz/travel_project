from django.conf.urls import url
from car_rental import views

urlpatterns = [url(r'^rental', views.Rental)]

               

