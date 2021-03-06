from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from .forms import AddUser , EditUser
from hotel_reservation import models as hotel
from countries import models as country
from car_rental import models as car
from django.contrib.auth.decorators import login_required
# Create your views here.

def signup(request):
    form = AddUser(request.POST)
    if request.method == 'POST':
        form = AddUser(request.POST)
        if form.is_valid():
            form.save()
            # don't forget to redirect user to his own profile
            return HttpResponseRedirect('/user/login')
        else:  # add some error messages
            return HttpResponseRedirect('user/signup')
    else:            
        return render(request,'signup.html',{'form':form})

@login_required
def viewprofile(request):
    user=request.user
    try:
        hotel_requests = hotel.HotelReservationRequest.objects.filter(user_requested = request.user.id).select_related('requested_hotel')
        car_requests =  car.CarRentalRequests.objects.filter(user_requested = request.user.id).select_related('destination','pick_up_point')          
    except Exception as e:
        car_requests = None
        hotel_requests = None


    context ={'hotel':hotel_requests,'car' : car_requests,'user':user}
    return render(request,'user_profile/profile.html',context)    

@login_required
def editprofile(request):
    if request.method =='POST':
        form=EditUser(request.POST,instance=request.user)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/user/profile/basic')
        else:
            return HttpResponseRedirect('/user/profile/basic')    

    else:   
        form=EditUser(instance=request.user) 
        context ={'form':form}             
        return render(request,'user_profile/edit_profile.html',context)
            