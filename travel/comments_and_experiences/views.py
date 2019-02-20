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
    

    #all_experiance= UserExperience.objects.filter(city_id=city_id_url)
    #context_dict ={'exp' : all_experiance}
    
    #all_experiance_id= UserExperience.objects.filter(city_id=city_id_url).values_list('id', flat=True)
    #print(all_experiance_id)
    #context_dict_1={}
    #for i in all_experiance_id:
         #all_experiance_title= UserExperience.objects.filter(id=i).values_list('title',flat=True)
         #all_experiance_desc= UserExperience.objects.filter(id=i).values_list('description',flat=True)
         #all_comments= Comments.objects.filter(experience_id=i)
         #context_dict_1.update({'title' : all_experiance_title,'desc' : all_experiance_desc,'comm' : all_comments})
    
         #print(context_dict_1)

    form_1 = ExperianceForm()
    if request.method == "POST":
        form_1 = ExperianceForm(request.POST)
        if form_1.is_valid():  
            form_1=form_1.save(commit=False)
            form_1.writer=request.user
            form_1.city_id=City.objects.get(id=city_id_url)
            form_1.save()

    #comments form
    flag=0
    form_2 = CommentsForm()
    if request.method == "POST":
        form_2 = CommentsForm(request.POST)
        if form_2.is_valid():  
            form_2=form_2.save()
            form_2.user_commented=request.user

            exp=request.POST['expid']                              #get_exoeriance id from templete
            form_2.experience_id =UserExperience.objects.get(id =exp)

            form_2.save()
    flag=1
    
    context_dict.update({'form_1':form_1,'form_2':form_2})
    return render (request,'exp_com.html',context=context_dict)    
#------------------------------------------------------------------------------------------ 

def experiance_1(request,city_id):      #pass city_id and exp id 
    #experiance form

    city_id_url=city_id

    
    form_1 = ExperianceForm()
    if request.method == "POST":
        form_1 = ExperianceForm(request.POST)
        if form_1.is_valid():  
            form_1=form_1.save(commit=False)
            form_1.writer=request.user
            form_1.city_id=City.objects.get(id=city_id_url)
            form_1.save()

    #comments form
    flag=0
    form_2 = CommentsForm()
    if request.method == "POST":
        form_2 = CommentsForm(request.POST)
        if form_2.is_valid():  
            form_2=form_2.save()
            form_2.user_commented=request.user

            exp=request.POST['expid']                              #get_exoeriance id from templete
            form_2.experience_id =UserExperience.objects.get(id =exp)

            form_2.save()
    flag=1
    
    context_dict={'form_1':form_1,'form_2':form_2}
    return render (request,'exp_com.html',context=context_dict)        
     

            

 
     

            

 