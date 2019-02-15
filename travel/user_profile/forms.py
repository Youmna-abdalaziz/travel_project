from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.forms import UserChangeForm 

class AddUser(UserCreationForm):
    username = forms.CharField(required=True)
    
    class Meta:
        model= User
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
        model = User
        fields=(
            'first_name',
            'last_name',
            'email',
            'password'
        )
    