from django.conf.urls import url
from comments_and_experiences import views

<<<<<<< HEAD
urlpatterns = [url(r'^(?P<city_id>[0-9]+)/(?P<exp_id>[0-9]+)/experience$',views.experiance),
               url(r'^(?P<city_id>[0-9]+)/experience$', views.experiance_1)]
=======
urlpatterns = [url(r'^(?P<city_id>[0-9]+)/(?P<exp_id>[0-9]+)/experiance$',views.experiance),
               url(r'^(?P<city_id>[0-9]+)/experiance$', views.experiance_1)]
>>>>>>> f120623aea13ef7e14a82f930c9828875bf90f88


               