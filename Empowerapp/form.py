from django import forms
from .models import studsignup,adminlogin,employersdetails,addjobs,feedback,contact,jobapply

class adminloginform(forms.ModelForm):
    class Meta:
        model=adminlogin
        fields='__all__'

class usersignupForm(forms.ModelForm):
    class Meta:
        model=studsignup
        fields='__all__'

class employesdetailsForm(forms.ModelForm):
    class Meta:
        model=employersdetails
        fields='__all__'


class useraddjobsForm(forms.ModelForm):
    class Meta:
        model=addjobs
        fields='__all__'


class feedbackform(forms.ModelForm):
    class Meta:
        model=feedback
        fields='__all__'

class contactform(forms.ModelForm):
    class Meta:
        model=contact
        fields='__all__'

        

class jobapplyform(forms.ModelForm):
    class Meta:
        model=jobapply
        fields='__all__'