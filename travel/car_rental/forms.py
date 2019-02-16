from django import forms
from .models import CarRentalRequests
from countries.models import Location


  

class CarRentalForm(forms.ModelForm):
    class Meta:
        model = CarRentalRequests
        fields = ('pick_up_point','destination','pick_up_date','Drop_off_date', 'pick_up_time', 'Drop_off_time',)



    def __init__(self, *args, **kwargs):
        location_id_url = kwargs.pop("locationid")
        super(CarRentalForm,self).__init__(*args, **kwargs)
        self.fields['destination'].queryset = Location.objects.filter(location_city_id=location_id_url)
        self.fields['pick_up_point'].queryset = Location.objects.filter(location_city_id=location_id_url)            