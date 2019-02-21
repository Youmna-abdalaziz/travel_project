from django.conf.urls import url
from comments_and_experiences import views

urlpatterns = [url(r'^(?P<city_id>[0-9]+)/(?P<exp_id>[0-9]+)/experience$',views.experiance),
               url(r'^(?P<city_id>[0-9]+)/experience$', views.experiance_1)]


               