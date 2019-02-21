from django.conf.urls import url
from hotel_reservation import views

urlpatterns = [
<<<<<<< HEAD
    url(r'^$', views.reservation)
=======
    url(r'^(?P<cid>[0-9]+)/$', views.reservation)
>>>>>>> f120623aea13ef7e14a82f930c9828875bf90f88
]

               

