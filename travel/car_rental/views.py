from .models import CarRentalRequests
from django.shortcuts import render
from countries.models import Location
from .forms import CarRentalForm
from django.http import HttpResponseRedirect

def Rental(request):      #pass location_id  
    location_id_url='8'           #pass location_id   
    form = CarRentalForm(locationid =  location_id_url)
    if request.method == "POST":
        form = CarRentalForm(request.POST,locationid = location_id_url)
        if form.is_valid():
            form=form.save()
          

    return render(request,'carr.html', {'form':form})
