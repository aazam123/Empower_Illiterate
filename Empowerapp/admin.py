from django.contrib import admin
from .models import studsignup,adminlogin,addjobs,employersdetails,feedback,contact,jobapply
# Register your models here.

class studsignupm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','fname','profilepic','email','mobile','password']

admin.site.register(studsignup,studsignupm)

class adminloginm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','fname','email','mobile','password']

admin.site.register(adminlogin,adminloginm)

class addjobsm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','email','jobtitle','companyname','companylogo','jobselect','city','description']

admin.site.register(addjobs,addjobsm)


class employedetailsm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','name','email','mobile','skill','hobbies','address','experience','images','cv']

admin.site.register(employersdetails,employedetailsm)

class feedbackm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','name','email','message']

admin.site.register(feedback,feedbackm)

class contactm(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','name','email','message']

admin.site.register(contact,contactm)

class jobapplym(admin.ModelAdmin):
    ordering=['id']
    list_display=['id','userjobpost','name','email','address','city','cv']

admin.site.register(jobapply,jobapplym)
