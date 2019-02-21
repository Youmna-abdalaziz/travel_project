from django.conf.urls import url
from hotel_reservation import views

urlpatterns = [
    url(r'^$', views.reservation)
]

               

