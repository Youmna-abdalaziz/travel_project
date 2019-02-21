from .models import UserExperience,Comments
from django.shortcuts import render
from countries.models import City
from .forms import ExperianceForm,CommentsForm
from django.http import HttpResponseRedirect
from user_profile.models import TravelUsers

def experiance(request,exp_id,city_id):      #pass city_id and exp id 
    #experiance form
    city_id_url=city_id
    exp_id_url=exp_id
    exp_data = UserExperience.objects.filter(id=exp_id_url)     #get specific experiance for specific city   
    context_dict ={'exp' : exp_data}                      
       
    comments_for_exp= Comments.objects.filter(experience_id=exp_id_url)   #get comments for this experiance
    context_dict.update({'comments':comments_for_exp})

    form_1 = ExperianceForm()
    try:
        if request.method == "POST":
            form_1 = ExperianceForm(request.POST)
            if form_1.is_valid():  
                form_1=form_1.save(commit=False)
                form_1.writer=request.user
                form_1.city_id=City.objects.get(id=city_id_url)
                form_1.save()
                flag=0
    except Exception as e:
        return HttpResponseRedirect('/user/login')
    
    #comments form
    
    form_2 = CommentsForm()
    try:
        if request.method == "POST":
            form_2 = CommentsForm(request.POST)
            if form_2.is_valid():  
                form_2=form_2.save()
                form_2.user_commented=request.user
                experiance= exp_id_url
                                           #get_exoeriance id from templete
                form_2.experience_id =  exp_id_url
                UserExperience.objects.get(id =experiance)
                form_2.save()
                flag=1
    except Exception as e:
        print(e)
       # return HttpResponseRedirect('/user/login')
    
    
    context_dict.update({'form_1':form_1,'form_2':form_2})
    return render (request,'exp_com.html',context=context_dict)    
#------------------------------------------------------------------------------------------ 

def experiance_1(request,city_id):      #pass city_id and exp id 
    #experiance form

    city_id_url=city_id
    try:   
        form_1 = ExperianceForm()
        if request.method == "POST":
            form_1 = ExperianceForm(request.POST)
            if form_1.is_valid():  
                form_1=form_1.save(commit=False)
                form_1.writer=request.user
                form_1.city_id=City.objects.get(id=city_id_url)
                form_1.save()
                
    except Exception as e:
        return HttpResponseRedirect('/user/login')            

    #comments form
    
    form_2 = CommentsForm()
    if request.method == "POST":
        try:
            form_2 = CommentsForm(request.POST)    
            if form_2.is_valid():  
                form_2=form_2.save()
                form_2.user_commented=request.user
                exp=request.POST['expid']                              #get_exoeriance id from templete
                form_2.experience_id =UserExperience.objects.get(id =exp)
                form_2.save()
                
        except Exception as e:
            return HttpResponseRedirect('/user/login')        
    
    
    context_dict={'form_1':form_1,'form_2':form_2}
    return render (request,'exp_com.html',context=context_dict)        
     

            

 
     

            

 