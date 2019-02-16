from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserChangeForm
from .forms import AddUser , EditUser
# Create your views here.

def signup(request):
    form = AddUser(request.POST)
    if request.method == 'POST':
        form = AddUser(request.POST)
        if form.is_valid():
            form.save()
            # don't forget to redirect user to his own profile
            return HttpResponseRedirect('profile')
        else:  # add some error messages
            return HttpResponseRedirect('signup')
    else:            
        return render(request,'signup.html',{'form':form})

def viewprofile(request):
    context ={'user':request.user}             
    return render(request,'user_profile/view_profile.html',context)

def editprofile(request):
    if request.method =='POST':
        form=EditUser(request.POST,instance=request.user)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/user/profile')
        else:
            return HttpResponseRedirect('/user/signup')    

    else:   
        form=EditUser(instance=request.user) 
        context ={'form':form}             
        return render(request,'user_profile/edit_profile.html',context)
            