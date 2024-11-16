from .models import Category,Page

def category_processor(request):
    cat = Category.objects.all()
    return {'cat': cat}


def aboutus(request):
    first_page = Page.objects.first()
    return {'first_page':first_page}