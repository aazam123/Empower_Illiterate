from django.db import models
from datetime import datetime

# Create your models here.
class adminlogin(models.Model):
    created=models.DateTimeField(default=datetime.now(),blank=True)
    fname=models.CharField(max_length=20)
    email=models.EmailField()
    mobile=models.BigIntegerField()
    password=models.CharField(max_length=20)


class studsignup(models.Model):
    fname=models.CharField(max_length=20)
    profilepic=models.FileField(upload_to='User')
    email=models.EmailField()
    mobile=models.BigIntegerField()
    password=models.CharField(max_length=20)
    
class employersdetails(models.Model):
    name=models.CharField(max_length=20)
    email=models.EmailField()
    mobile=models.BigIntegerField()
    skill=models.CharField(max_length=150)
    hobbies=models.CharField(max_length=150)
    address=models.TextField()
    experience=models.CharField(max_length=80)
    images=models.FileField(upload_to='User')
    cv=models.FileField(upload_to='User')
    
class addjobs(models.Model):
    email=models.EmailField()
    jobtitle=models.CharField(max_length=80)
    companyname=models.CharField(max_length=80)
    companylogo=models.FileField(upload_to='Myfiles')
    jobselect=models.CharField(max_length=80)
    city=models.CharField(max_length=80)
    description=models.TextField()


class jobapply(models.Model):
    userjobpost=models.CharField(max_length=100)
    name=models.CharField(max_length=80)
    email=models.EmailField()
    mobile=models.BigIntegerField()
    address=models.TextField()
    city=models.CharField(max_length=80)
    cv=models.FileField(upload_to='CV')



class feedback(models.Model):
    name=models.CharField(max_length=80)
    email=models.EmailField()
    message=models.TextField()
    

class contact(models.Model):
    name=models.CharField(max_length=80)
    email=models.EmailField()
    message=models.TextField()
    


