from django.shortcuts import render, redirect
from .form import usersignupForm, adminloginform, employesdetailsForm, feedbackform, contactform, useraddjobsForm, jobapplyform
from .models import studsignup, adminlogin, employersdetails, addjobs, feedback, contact, jobapply
from django.contrib.auth import logout
from django.contrib import messages
from django.core.mail import send_mail
from Empower import settings
import random


# Create your views here.
def index(request):
    if request.method == 'POST':  # root
        if request.POST.get('feedback') == 'feedback':
            newuser = feedbackform(request.POST)
            if newuser.is_valid():
                newuser.save()
                print("User Send Feedback!")
            else:
                print(newuser.errors)
    return render(request, 'index.html')


def home(request):
    data = request.session.get('user')
    return render(request, 'home.html', {'user': data})


def jobs(request):
    context = {}
    data = {'stdata': addjobs.objects.all}
    context["dataset"] = addjobs.objects.all()
    data = request.session.get('user')
    return render(request, 'jobs.html', {'user': data, 'stdata': addjobs.objects.all})


def apply(request, id):
    data = addjobs.objects.get(id=id)
    if request.method == 'POST':
        stupdate = jobapplyform(request.POST, request.FILES)
        if stupdate.is_valid():
            stupdate.save()
            # st=jobapply.objects.get()# Collect all records from table
            # user=jobapply.objects.filter()
            name = request.POST['name'],
            email = request.POST['email'],
            mobile = request.POST['mobile'],
            address = request.POST['address'],
            city = request.POST['city'],

            print("Job Apply Successfully")
            # Email Sending Code
            # send_mail(subject="Welcome!",message=f"Hello User!\nYour account has been created with us!\nEnjoy our services\n\nIf need any help, contact on\n+9197247 99469 | help@notesapp.com",from_email=settings.EMAIL_HOST_USER,recipient_list=["angelraninga0206@icloud.com","kashyapsorathiya14@gmail.com","alishpanara4412@gmail.com","aazammorvadiya890@gmail.com","anjukakran999@gmail.com","shyampabari02@gmail.com"])
            otp = random.randint(1111, 9999)
            sub = "Welcome!"
            msg = f"Hello User!\n One Employes Job Apply!\nEnjoy our services\nName:-{name}\nEmail:-{email}\nMobile:-{mobile}\nAddress:-{address}\nCity:-{city}\nIf need any help, contact on\n+917228021405 | aazammorvadiya890@.com"

            from_ID = settings.EMAIL_HOST_USER
            to_ID = [request.POST['userjobpost']]
            send_mail(subject=sub, message=msg,
                      from_email=from_ID, recipient_list=to_ID)
            return redirect("jobs")
        else:
            print(stupdate.errors)
    return render(request, 'apply.html', {'id': addjobs.objects.get(id=id)})


def about(request):
    data = request.session.get('user')
    return render(request, 'about.html', {'user': data})


def footer(request):
    data = request.session.get('user')
    return render(request, 'footer.html', {'user': data})


def adminshowapply(request):
    data = {'stdata': jobapply.objects.all}
    data = request.session.get('user')
    return render(request, 'adminshowapply.html', {'user': data, 'stdata': jobapply.objects.all})


def adminshowstudent(request):
    data = {'stdata': studsignup.objects.all}
    data = request.session.get('user')
    return render(request, 'adminshowstudent.html', {'user': data, 'stdata': studsignup.objects.all})


def adminshowfeedback(request):
    data = {'stdata': feedback.objects.all}
    data = request.session.get('user')
    return render(request, 'adminshowfeedback.html', {'user': data, 'stdata': feedback.objects.all})


def adminshowemployerdetails(request):
    data = {'stdata': employersdetails.objects.all}
    data = request.session.get('user')
    return render(request, 'adminshowemployerdetails.html', {'user': data, 'stdata': employersdetails.objects.all})


def basicdetails(request):
    data = request.session.get('user')
    return render(request, 'baiscdetils.html', {'user': data})


def showcontact(request):
    data = {'stdata': contact.objects.all}
    data = request.session.get('user')
    return render(request, 'showcontact.html', {'user': data, 'stdata': contact.objects.all})


def useraddjob(request):
    data = request.session.get('user')
    if request.method == 'POST':
        jobs = useraddjobsForm(request.POST, request.FILES)
        if jobs.is_valid():
            jobs.save()
            print("User  Job adds!")
            return redirect('jobs')
        else:
            print(jobs.errors)
    return render(request, 'useraddjobs.html', {'user': data})


def contacts(request):
    data = request.session.get('user')
    if request.method == 'POST':
        user = contactform(request.POST)
        if user.is_valid():
            user.save()
            print("Your Query send")
        else:
            print(user.errors)
    return render(request, 'contacts.html', {'user': data})


def base(request):
    data = request.session.get('user')
    if request.method == 'POST':  # root
        if request.POST.get('feedback') == 'feedback':
            newuser = feedbackform(request.POST)
            if newuser.is_valid():
                newuser.save()
                print("User created successfully!")
                return redirect('about')
            else:
                print(newuser.errors)
    return render(request, 'employers.html', {'user': data})


def employers(request):
    user = request.session.get('user')
    uid = request.session.get('userid')
    cuser = employersdetails.objects.get(id=uid)
    return render(request, 'employers.html', {'user': user, 'cuser': employersdetails.objects.get(id=uid)})


def jobseeker(request):
    data = request.session.get('user')
    if request.method == 'POST':  # root
        username = ""
        newuser = employesdetailsForm(request.POST, request.FILES)
        if newuser.is_valid():
            username = newuser.cleaned_data.get('email')
            try:
                un = employersdetails.objects.get(email=username)
                print("User Alredy ragister !")
                messages.error(request, "Username is already exists!")
            except employersdetails.DoesNotExist:
                newuser.save()
                print("User Apply Successfull!")
                messages.success(request, "User Job Apply!")

            return redirect('employers')
        else:
            print(newuser.errors)
    return render(request, 'jobseeker.html', {'user': data})


def components(request):
    data = request.session.get('user')
    return render(request, 'components.html', {'user': data})


def adminlogins(request):
    if request.method == 'POST':
        unm = request.POST['email']
        pas = request.POST['password']

        user = adminlogin.objects.filter(email=unm, password=pas)
        aid = adminlogin.objects.get(email=unm)
        print('Current User:', aid.id)
        if user:  # true
            print("Login successfull!")
            request.session['user'] = unm
            request.session['aid'] = aid.id
            return redirect('adminhome')
        else:
            print("Error!Email or Password does't match")
    return render(request, 'adminlogins.html')


def studentlogin(request):
    user = request.session.get('user')
    if request.method == 'POST':  # root
        if request.POST.get('signup') == 'signup':
            username = ""
            newuser = usersignupForm(request.POST, request.FILES)
            if newuser.is_valid():
                username = newuser.cleaned_data.get('email')
                try:
                    un = studsignup.objects.get(email=username)
                    print("Username is already exists!")
                    messages.error(request, "Username is already exists!")
                except studsignup.DoesNotExist:
                    newuser.save()
                    print("User created successfully!")
                    messages.success(request, "User created successfully!")

                return redirect('studentlogin')
            else:
                print(newuser.errors)
        elif request.POST.get('login') == 'login':
            unm = request.POST['email']
            pas = request.POST['password']

            user = studsignup.objects.filter(email=unm, password=pas)
            uid = studsignup.objects.get(email=unm)
            print("UserID:", uid.id)
            if user:  # true
                print("Login Successfull!")
                request.session['user'] = unm
                request.session['userid'] = uid.id
                return redirect('home')
            else:
                print("Error! Username or Password does't match.")
    return render(request, 'studentlogin.html', {'user': user})


def updateprofile(request):
    user = request.session.get('user')
    uid = request.session.get('userid')
    cuser = studsignup.objects.get(id=uid)
    if request.method == 'POST':
        updateuser = usersignupForm(request.POST, request.FILES)
        if updateuser.is_valid():
            updateuser = usersignupForm(request.POST, instance=cuser)
            updateuser.save()
            print('Your profile has been updated!')
            return redirect('employers')
        else:
            print(updateuser.errors)
    return render(request, 'updateprofile.html', {'user': user, 'cuser': studsignup.objects.get(id=uid)})


def adminhome(request):
    data = request.session.get('user')
    return render(request, 'adminhome.html', {'user': data})


def adminaddjobs(request):
    data = request.session.get('user')
    if request.method == 'POST':
        jobs = useraddjobsForm(request.POST, request.FILES)
        if jobs.is_valid():
            jobs.save()
            print("Your Job adds!")
        else:
            print(jobs.errors)
    return render(request, 'adminaddjobs.html', {'user': data})


def adminprofile(request):
    user = request.session.get('user')
    aid = request.session.get('aid')
    cuser = adminlogin.objects.get(id=aid)
    if request.method == 'POST':
        updateuser = adminloginform(request.POST)
        if updateuser.is_valid():
            updateuser = adminloginform(request.POST, instance=cuser)
            updateuser.save()
            print('Your admin Add!')
            return redirect('addadmin')
        else:
            print(updateuser.errors)
    return render(request, 'adminprofile.html', {'user': user, 'cuser': adminlogin.objects.get(id=aid)})
    # return render(request,'adminprofile.html',{'user':user})


def addadmin(request):

    if request.method == 'POST':
        user = adminloginform(request.POST)
        if user.is_valid():
            user.save()
            print("your acount crt")
        else:
            print(user.errors)
    data = {'stdata': adminlogin.objects.all}
    data = request.session.get('user')
    return render(request, 'addadmin.html', {'user': data, 'stdata': adminlogin.objects.all})


def adminshowjobs(request):
    data = {'stdata': addjobs.objects.all}
    data = request.session.get('user')
    return render(request, 'adminshowjobs.html', {'user': data, 'stdata': addjobs.objects.all})


def usershowjobs(request):
    data = {'stdata': addjobs.objects.all}
    data = request.session.get('user')
    return render(request, 'usershowjobs.html', {'user': data, 'stdata': addjobs.objects.all})


def studentdelete(request, id):
    data = studsignup.objects.get(id=id)
    studsignup.delete(data)
    return redirect('adminshowstudent')


def feedbackdelete(request, id):
    feed = feedback.objects.get(id=id)
    feedback.delete(feed)
    return redirect('adminshowfeedback')


def emplodetdelete(request, id):
    emplo = employersdetails.objects.get(id=id)
    employersdetails.delete(emplo)
    return redirect('adminshowemployerdetails')


def contactdelete(request, id):
    con = contact.objects.get(id=id)
    contact.delete(con)
    return redirect('showcontact')


def jobsdelete(request, id):
    job = addjobs.objects.get(id=id)
    addjobs.delete(job)
    return redirect('adminshowjobs')


def jobapplys(request, id):
    job = jobapply.objects.get(id=id)
    jobapply.delete(job)
    return redirect('adminshowapply')


def delete(request, id):
    data = adminlogin.objects.get(id=id)
    adminlogin.delete(data)
    return redirect('addadmin')


def userlogout(request):
    logout(request)
    return redirect('/')
