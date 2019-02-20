from .models import HotelReservationRequest
from django.shortcuts import render
from countries.models import Hotel
from .forms import reservationForm
from django.http import HttpResponseRedirect
from user_profile.models import TravelUsers

def reservation(request,cid):      #pass city_id  
    city_id_url=cid          #pass city_id   
    form = reservationForm(cityid =  city_id_url)
    
    if request.method == "POST":
        form = reservationForm(request.POST,cityid = city_id_url)
        userr = TravelUsers.objects.get(username=request.user)
        print(userr)
        if form.is_valid():
            
            form=form.save(commit=False)
            form.user_requested=request.user
            form.save()
          
            

    return render(request, 'hotelr.html', {'form':form})




'''from django.shortcuts import render
from countries.models import Hotel
from django.contrib.auth.forms import UserCreationForm
from django.contrib  import messages
  

def reservation(request):
    
    context ={
        'hotels':Hotel.objects.filter(hotel_city_id='1')  #---id will change to  variable  
    }
    
    if request.method =='POST':
        form=UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            print ("yes it is ok")
            

            name=form.cleaned_data.get('select_hotel')
            print (name)
        else:
             print ("hello")

            
    else:
        form=UserCreationForm()

    return render (request,'hotelr.html',context,{'form':form })'''
