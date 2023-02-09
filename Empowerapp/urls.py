from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from Empowerapp import views

urlpatterns = [
   path('admin/',admin.site.urls),
   path('',views.index),
   path('home/',views.home,name='home'),
   path('jobs/',views.jobs,name='jobs'),
   path('about/',views.about,name='about'),
   path('contacts/',views.contacts,name='contacts'),
   path('employers/',views.employers,name='employers'),
   path('jobseeker/',views.jobseeker,name='jobseeker'),
   path('adminlogins/',views.adminlogins,name='adminlogins'), 
   path('basicdetails/',views.basicdetails,name='basicdetails'), 
   path('adminhome/',views.adminhome,name='adminhome'), 
   path('addadmin/',views.addadmin,name='addadmin'),
   path('useraddjobs/',views.useraddjob,name='useraddjobs'),
   path('usershowjobs/',views.usershowjobs,name='usershowjobs'),
   path('adminshowapply/',views.adminshowapply,name='adminshowapply'),
   
   path('apply/<int:id>/',views.apply,name='apply'),
   

   path('adminaddjobs/',views.adminaddjobs,name='adminaddjobs'), 
   path('adminprofile/',views.adminprofile,name='adminprofile'),
   path('showcontact/',views.showcontact,name='showcontact'),
   path('adminshowjobs/',views.adminshowjobs,name='adminshowjobs'), 
   path('adminshowstudent/',views.adminshowstudent,name='adminshowstudent'),
   path('adminshowfeedback/',views.adminshowfeedback,name='adminshowfeedback'),
   path('adminshowemployerdetails/',views.adminshowemployerdetails,name='adminshowemployerdetails'),
   path('delete/<int:id>',views.delete),
   path('jobsdelete/<int:id>/',views.jobsdelete),
   path('contactdelete/<int:id>/',views.contactdelete),
   path('emplodetdelete/<int:id>/',views.emplodetdelete),
   path('feedbackdelete/<int:id>/',views.feedbackdelete),
   path('jobapply/<int:id>/',views.jobapplys),
   path('studentdelete/<int:id>/',views.studentdelete),


   path('studentlogin/',views.studentlogin,name='studentlogin'),
   path('updateprofile/',views.updateprofile,name='updateprofile'),
   path('userlogout/',views.userlogout),
   path('components/',views.components,name='components'), 
]

if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)