from django import forms
from .models import TravelUsers
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.forms import UserChangeForm 

class AddUser(UserCreationForm):
    username = forms.CharField(required=True)
    first_name =forms.CharField(label='First Name')
    last_name = forms.CharField(label='Last Name')
    email = forms.EmailField(label='Email Address')
    password1 = forms.CharField(label=' Write password', widget=forms.PasswordInput,required=True)
    password2 = forms.CharField(label='Rewrite password', widget=forms.PasswordInput)
    
    class Meta:
        model= TravelUsers
        fields = (
            'username',
            'first_name',
            'last_name',
            'email',
            'password1',
            'password2'
        )
    def save(self, commit=True):
        user = super(AddUser, self).save(commit=False)
        user.first_name = self.cleaned_data['first_name']
        user.last_name = self.cleaned_data['last_name']
        user.email = self.cleaned_data['email']

        if commit:
            user.save()
        return user    

class EditUser(UserChangeForm):
    class Meta:
        model = TravelUsers
        fields=(
            'first_name',
            'last_name',
            'email',
            'password',
            'description'
        )
    