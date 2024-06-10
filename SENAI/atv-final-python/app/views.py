
from django.shortcuts import render
from django.http import HttpResponse
from .models import Equipment

# Create your views here.


def index(request):
    return render(request, 'index.html')

def cadastro(request):
    if request_method == 'POST':
        idNumber = request.POST['name']
        local = request.POST['local']
        image = request.FILES.get('image')
        