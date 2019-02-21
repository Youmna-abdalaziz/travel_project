from .models import CarRentalRequests
from django.shortcuts import render
from countries.models import Location
from .forms import CarRentalForm
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required

@login_required
def Rental(request,city_id):      #pass location_id  
    city_id_url=city_id           #pass location_id   
    form = CarRentalForm(city_id = city_id_url)
    if request.method == "POST":
        form = CarRentalForm(request.POST,city_id = city_id_url)
        if form.is_valid():
                form=form.save(commit=False)
                form.user_requested=request.user
                form=form.save()
                return HttpResponseRedirect('/user/profile/basic')
        
          

    return render(request,'carr.html', {'form':form})
