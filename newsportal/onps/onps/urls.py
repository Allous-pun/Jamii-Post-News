"""
URL configuration for onps project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from .import views,adminviews,subadminviews

urlpatterns = [
    path('admin/', admin.site.urls),
    path('base/', views.BASE, name='base'),
    path('base1/', views.BASE1, name='base1'),
    path('', views.INDEX, name='index'),
    path('Aboutus', views.ABOUTUS, name='aboutus'),
    path('Contactus', views.CONTACTUS, name='contactus'),
    path('category/<int:id>/', views.category_detail, name='category_detail'),
    path('ViewSingleNews/<str:id>', views.VIEW_SINGLENEWS, name='view_single_news'),
    path('thank_you', views.THANKYOU, name='thank_you'),
    path('Login', views.LOGIN, name='login'),
    path('doLogin', views.doLogin, name='doLogin'),
    path('Dashboard', views.DASHBOARD, name='dashboard'),
    path('AdminProfile', views.ADMIN_PROFILE, name='admin_profile'),
    path('AdminProfile/update', views.ADMIN_PROFILE_UPDATE, name='admin_profile_update'),
    path('Password', views.CHANGE_PASSWORD, name='change_password'),
    path('AddSubadmin', adminviews.ADD_SUBADMIN, name='add_subadmin'),
    path('ManageSubadmin', adminviews.MANAGE_SUBADMIN, name='manage_subadmin'),
    path('DeleteSubadmin/<str:id>', adminviews.DELETE_SUBADMIN, name='delete_subadmin'),
    path('ViewSubadmin/<str:id>', adminviews.VIEW_SUBADMIN, name='view_subadmin'),
    path('SubadminProfile/update', adminviews.SUBADMIN_PROFILE_UPDATE, name='subadmin_profile_update'),
    path('Admin/AddCategory', adminviews.ADD_CATEGORY, name='add_category'),
    path('Admin/ManageCategory', adminviews.MANAGE_CATEGORY, name='manage_category'),
    path('Admin/DeleteCategory/<str:id>', adminviews.DELETE_CATEGORY, name='delete_category'),
    path('UpdateCategory/<str:id>', adminviews.UPDATE_CATEGORY, name='update_category'),
    path('UpdateCategoryDetails', adminviews.UPDATE_CATEGORY_DETAILS, name='update_category_details'),
    path('Admin/AddSubcategory', adminviews.ADD_SUBCATEGORY, name='add_subcategory'),
    path('Admin/ManageSubcategory', adminviews.MANAGE_SUBCATEGORY, name='manage_subcategory'),
    path('Admin/DeleteSubcategory/<str:id>', adminviews.DELETE_SUBCATEGORY, name='delete_subcategory'),
    path('UpdateSubcategory/<str:id>', adminviews.UPDATE_SUBCATEGORY, name='update_subcategory'),
    path('UpdateSubcategoryDetails', adminviews.UPDATE_SUBCATEGORY_DETAILS, name='update_subcategory_details'),
    path('Admin/AddPost', adminviews.ADD_POST, name='add_post'),
    path('get_subcat/', adminviews.get_subcat, name='get_subcat'),
    path('Admin/ManagePosts', adminviews.MANAGE_POSTS, name='manage_posts'),
    path('Admin/DeletePosts/<str:id>', adminviews.DELETE_POSTS, name='delete_posts'),
    path('ViewsPosts/<int:id>/', adminviews.VIEWS_POSTS, name='views_posts'),
    path('UpdatePost', adminviews.UPDATE_POST, name='update_post'),
    path('Website/update', adminviews.WEBSITE_UPDATE, name='website_update'),
    path('AllComments', adminviews.ALLCOMMENTS, name='all_comments'),
    path('Admin/DeleteComments/<str:id>', adminviews.DELETE_COMMENTS, name='delete_comments'),
    path('ApprovedComments', adminviews.APPROVEDCOMMENTS, name='approved_comments'),
    path('UnapprovedComments', adminviews.UNAPPROVEDCOMMENTS, name='unapproved_comments'),
    path('ViewComments/<str:id>', adminviews.VIEW_COMMENTS, name='view-comments'),
    path('UpdateCommentsStatus', adminviews.UPDATE_COMMENTS_STATUS, name='update-comments-status'),
    path('SearchNews', views.SEARCH_NEWS, name='search_news'),
    
    path('doLogout', views.doLogout, name='logout'),
]+static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)
