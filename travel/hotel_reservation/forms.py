from django import forms
from .models import HotelReservationRequest
from countries.models import Hotel


  

class reservationForm(forms.ModelForm):
    class Meta:
        model = HotelReservationRequest

        fields = ('requested_hotel','from_date', 'to_date', 'no_of_adults',)

    
    def __init__(self, *args, **kwargs):
        city_id_url = kwargs.pop("cityid")
        super(reservationForm,self).__init__(*args, **kwargs)
        self.fields['requested_hotel'].queryset = Hotel.objects.filter(hotel_city_id=city_id_url)      #change with city id 

 
