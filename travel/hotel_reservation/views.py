from .models import HotelReservationRequest
from django.shortcuts import render
from countries.models import Hotel
from .forms import reservationForm
from django.http import HttpResponseRedirect
from user_profile.models import TravelUsers
from django.contrib.auth.decorators import login_required
@login_required
def reservation(request,city_id):      #pass city_id  
    city_id_url=city_id          #pass city_id   
    form = reservationForm(cityid =  city_id_url)
    
    if request.method == "POST":
        form = reservationForm(request.POST,cityid = city_id_url)
        userr = TravelUsers.objects.get(username=request.user)
        try:
            if form.is_valid():
                form=form.save(commit=False)
                form.user_requested=request.user
                form.save()
                return HttpResponseRedirect('/user/profile/basic')
        except Exception as e:
            return HttpResponseRedirect('/user/login')  
            

    return render(request, 'hotelr.html', {'form':form})


