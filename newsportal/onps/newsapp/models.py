from django.db import models
from django.core.validators import RegexValidator
from django.contrib.auth.models import AbstractUser
from django.utils import timezone


class CustomUser(AbstractUser):
    USER = {
        (1, 'admin'),
        (2, 'subadmin'),
    }
    user_type = models.CharField(choices=USER, max_length=50, default=1)

    # Profile picture field with a default image in case no image is provided
    profile_pic = models.ImageField(upload_to='profile_pics/', blank=True, null=True, default='default.jpg')


class Category(models.Model):
    catname = models.CharField(max_length=200)
    catdes = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.catname


class Subcategory(models.Model):
    cat_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    subcatname = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.subcatname


class News(models.Model):
    cat_id = models.ForeignKey(Category, on_delete=models.CASCADE)
    subcategory_id = models.ForeignKey(Subcategory, on_delete=models.CASCADE)
    posttitle = models.TextField(blank=True)
    postdetails = models.TextField(blank=True)
    status = models.CharField(max_length=50)
    postimage = models.ImageField(upload_to='news_images/')
    postedby = models.CharField(max_length=50)
    posted_date = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    updatedby = models.CharField(max_length=50)


class Page(models.Model):
    pagetitle = models.CharField(max_length=250)
    address = models.CharField(max_length=250)
    aboutus = models.TextField()
    email = models.EmailField(max_length=200)
    mobilenumber = models.IntegerField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


class Comments(models.Model):
    news_id = models.ForeignKey(News, on_delete=models.CASCADE)
    comment = models.TextField()
    name = models.CharField(max_length=250)
    email = models.CharField(max_length=250)
    status = models.CharField(max_length=250, blank=True)
    posted_date = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
