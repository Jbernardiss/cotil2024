
from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Equipment
from .forms import EquipmentForm

# Create your views here.


def index(request):
    return render(request, 'index.html')

def cadastro(request):

    if request.method == 'POST':

        form = EquipmentForm(request.POST, request.FILES)

        if form.is_valid():

            form.save()
            return redirect('cadastro')

        else:
            form = EquipmentForm()
            return render(request, 'cadastro.html', { 'form': form })
            

def consulta(request):
    equipment = Equipment.objects.all()
    return render(request, 'consulta.html', { 'equipment': equipment })

