from django import forms
from .models import UserExperience,Comments


  

class ExperianceForm(forms.ModelForm):
    class Meta:
        model = UserExperience

        fields = ('title','description', 'city_id', 'writer',)

    
class CommentsForm(forms.ModelForm):
    class Meta:
        model = Comments

        fields = ('comment','experience_id', 'user_commented',)   

 
