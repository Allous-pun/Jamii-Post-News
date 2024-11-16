from django.contrib.auth import authenticate, login,logout
from django.shortcuts import render, redirect
from django.contrib import messages
from django.conf import settings
from datetime import timedelta
from django.contrib.auth.decorators import login_required
from newsapp.models import CustomUser,News,Category,Page,Comments,Subcategory
from django.contrib.auth import get_user_model
from django.db import IntegrityError
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import random
from django.utils import timezone
from django.db.models import Q
from django.shortcuts import render, get_object_or_404
from django.db.models import Count
User = get_user_model()

def BASE(request):    
       return render(request,'base.html')

def BASE1(request):    
       return render(request,'base1.html')

def INDEX(request):
    postnews = News.objects.order_by('-posted_date')[:3]
    postnews1 = News.objects.all()[:4]
    category = Category.objects.all()[:4]
    recentnews = News.objects.order_by('-posted_date')[:5]

    context ={
        'postnews':postnews,
        'category': category,
        'recentnews':recentnews,
        'postnews1':postnews1
    }

    return render(request,'index.html',context)

def ABOUTUS(request):
    first_page = Page.objects.first()
    context = {
        "page": first_page,
    }
    return render(request, 'aboutus.html', context)

def CONTACTUS(request):
    first_page = Page.objects.first()
    context = {
        "page": first_page,
    }
    return render(request, 'contactus.html', context)

def category_detail(request):
    first_page = Page.objects.first()
    context = {
        "page": first_page,
    }
    return render(request, 'contactus.html', context)

def category_detail(request, id):
    catid = get_object_or_404(Category, id=id)
    news_list = News.objects.filter(cat_id=catid).order_by('-posted_date')  # Order by published date, or any other field
    paginator = Paginator(news_list, 4)  # Show 5 news items per page

    page_number = request.GET.get('page')
    news = paginator.get_page(page_number)
    
    return render(request, 'categorywise_newsdetail.html', {'catid': catid, 'news': news})

def VIEW_SINGLENEWS(request, id):
    sinnews = get_object_or_404(News, id=id)
    recentnews = News.objects.order_by('-posted_date')[:4]
    category_counts = Category.objects.annotate(news_count=Count('news'))
    comments_list = Comments.objects.filter(news_id=sinnews, status='Approved')

    if request.method == "POST":
        # Create the comment object
        comment_obj = Comments(
            news_id=sinnews,
            comment=request.POST['comment'],
            name=request.POST['name'],
            email=request.POST['email'],
        )
        comment_obj.save()
        return redirect('thank_you')
        

    context = {
        "sinnews": sinnews,
        'recentnews': recentnews,
        'category_counts': category_counts,
        'comments_list':comments_list,
    }
    return render(request, 'single-news-details.html', context)

def THANKYOU(request):
    return render(request, 'thankyou.html')


def DASHBOARD(request):
    category_count = Category.objects.all().count
    subcategory_count = Subcategory.objects.all().count
    news_count = News.objects.all().count
    subadmin_count = CustomUser.objects.filter(user_type=2).count
    
    context = {'category_count':category_count,
    'subcategory_count': subcategory_count,
    'news_count':news_count,
    'subadmin_count':subadmin_count,
   
         
    }
    return render(request,'dashboard.html',context)

def LOGIN(request):
    return render(request,'login.html')



def doLogin(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        remember_me = request.POST.get('remember_me')  # This is 'on' if checked, otherwise None
        
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            
            # Set session expiry based on remember_me
            if remember_me:
                # Remember the user for 30 days
                request.session.set_expiry(2592000)  # 30 days in seconds
            else:
                # Browser session: expire when the user closes the browser
                request.session.set_expiry(0)
                
            user_type = user.user_type
            if user_type == '1':
                return redirect('dashboard')
            elif user_type == '2':
                return redirect('dashboard')
        else:
            messages.error(request, 'Email or Password is not valid')
            # Pass the entered username and remember_me back to the template
            return render(request, 'login.html', {'username': username, 'remember_me': remember_me})
    else:
        # If the request method is not POST, redirect to the login page with an error message
        messages.error(request, 'Invalid request method')
        return redirect('login')



def doLogout(request):
    logout(request)
    return redirect('login')

@login_required(login_url = '/')
def ADMIN_PROFILE(request):
    user = CustomUser.objects.get(id = request.user.id)
    context = {
        "user":user,
    }
    return render(request,'profile.html',context)

@login_required(login_url='/')
def ADMIN_PROFILE_UPDATE(request):
    if request.method == "POST":
        profile_pic = request.FILES.get('profile_pic')  # Get the file from the form
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        username = request.POST.get('username')

        try:
            # Get the current logged-in user
            customuser = CustomUser.objects.get(id=request.user.id)
            customuser.first_name = first_name
            customuser.last_name = last_name
            customuser.email = email
            customuser.username = username

            # If profile_pic exists (not None or empty), update the profile_pic field
            if profile_pic:
                customuser.profile_pic = profile_pic

            # Save the updated user information
            customuser.save()
            messages.success(request, "Your profile has been updated successfully")
            return redirect('admin_profile')

        except CustomUser.DoesNotExist:
            messages.error(request, "User not found, profile update failed.")
        except Exception as e:
            messages.error(request, f"An error occurred: {str(e)}")

    # Render the form for updating profile
    return render(request, 'profile.html')



login_required(login_url='/')
def CHANGE_PASSWORD(request):
     context ={}
     ch = User.objects.filter(id = request.user.id)
     
     if len(ch)>0:
            data = User.objects.get(id = request.user.id)
            context["data"]:data            
     if request.method == "POST":        
        current = request.POST["cpwd"]
        new_pas = request.POST['npwd']
        user = User.objects.get(id = request.user.id)
        un = user.username
        check = user.check_password(current)
        if check == True:
          user.set_password(new_pas)
          user.save()
          messages.success(request,'Password Change  Succeesfully!!!')
          user = User.objects.get(username=un)
          login(request,user)
        else:
          messages.success(request,'Current Password wrong!!!')
          return redirect("change_password")
     return render(request,'change-password.html')


def SEARCH_NEWS(request):
    if request.method == "GET":
        query = request.GET.get('query', '')
        if query:
            # Filter records where posttitle, category name, or subcategory name contains the query
            searchnews = News.objects.filter(
                Q(posttitle__icontains=query) |
                Q(cat_id__catname__icontains=query) |
                Q(subcategory_id__subcatname__icontains=query)
            )

            if searchnews.exists():
                messages.info(request, "Search results for: " + query)
            else:
                messages.info(request, "No records found for: " + query)
            
            # Set up pagination
            paginator = Paginator(searchnews, 10)  # Show 10 search results per page
            page = request.GET.get('page', 1)
            
            try:
                searchnews_paginated = paginator.page(page)
            except PageNotAnInteger:
                searchnews_paginated = paginator.page(1)
            except EmptyPage:
                searchnews_paginated = paginator.page(paginator.num_pages)

            return render(request, 'search-news.html', {
                'searchnews': searchnews_paginated, 
                'query': query,
            })
        else:
           
            return render(request, 'search-news.html', {})
