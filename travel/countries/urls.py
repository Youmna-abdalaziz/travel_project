"""iti URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from countries import views

urlpatterns =[
	url(r'^(?P<country_id>[0-9]+)/country$',views.display_country),
	url(r'^(?P<country_id>[0-9]+)/country/(?P<city_id>[0-9]+)/city$',views.display_city),
	url(r'^(?P<city_id>[0-9]+)/city$',views.display_city),
<<<<<<< HEAD
    
=======
>>>>>>> f120623aea13ef7e14a82f930c9828875bf90f88
	url(r'^$',views.home)


]
