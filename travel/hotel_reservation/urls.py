from django.conf.urls import url
from hotel_reservation import views

urlpatterns = [
    url(r'^(?P<cid>[0-9]+)/$', views.reservation)
]

               

