from django.contrib import admin
from user_profile import models as user
from countries import models as country
# Register your models here.

class AddCity(admin.StackedInline):
    extra = 4
    model = country.City
class AddRelatedCountry(admin.ModelAdmin):
   inlines = [AddCity]


class AddLocation(admin.StackedInline):
    extra = 3
    model = country.Location
class AddRelatedCity(admin.ModelAdmin):
   inlines = [AddLocation]  
   

class AddUsers(admin.ModelAdmin):
    fieldsets=(
        ['user',{'fields':['username','is_active','is_staff',]}],
    )
    list_display=['first_name','last_name','email','date_joined']
    list_filter=['username','date_joined']
    

admin.site.register(country.City,AddRelatedCity)
admin.site.register(country.Country,AddRelatedCountry)
admin.site.register(user.TravelUsers,AddUsers)

