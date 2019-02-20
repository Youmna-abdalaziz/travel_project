from .models import CarRentalRequests
from django.shortcuts import render
from countries.models import Location
from .forms import CarRentalForm
from django.http import HttpResponseRedirect

def Rental(request,c_id):      #pass location_id  
    cid_id_url=c_id       #pass location_id   
    form = CarRentalForm(cid =  cid_id_url)
    if request.method == "POST":
        form = CarRentalForm(request.POST,cid =  cid_id_url)
        if form.is_valid():
                form=form.save(commit=False)
                form.user_requested=request.user
                form=form.save()
        
    return render(request,'carr.html', {'form':form})
