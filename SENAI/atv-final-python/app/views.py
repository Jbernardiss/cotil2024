
from django.shortcuts import get_object_or_404, render, redirect
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
            return redirect('consulta')

    else:
        form = EquipmentForm()
    
    return render(request, 'cadastro.html', { 'form': form })
            
def edicao(request, id):
    
    equipment = get_object_or_404(Equipment, idNumber=id)
    
    if request.method == 'POST':
        
        if 'update' in request.POST:
        
            form = EquipmentForm(request.POST, request.FILES, instance=equipment)
            if form.is_valid():
                form.save()
                return redirect('consulta')
        
        elif 'delete' in request.POST:
            equipment.delete()
            return redirect('consulta')

    else:
        form = EquipmentForm(instance=equipment)
    
    return render(request, 'edicao.html', { 'form': form })


def consulta(request):
    equipmentList = Equipment.objects.all()
    return render(request, 'consulta.html', { 'equipmentList': equipmentList })

