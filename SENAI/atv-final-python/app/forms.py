
from django import forms
from .models import Equipment


class EquipmentForm(forms.ModelForm):
    class Meta:
        model = Equipment
        fields = ['idNumber', 'local', 'image']
    
    def __init__(self, *args, **kwargs):
        super(EquipmentForm, self).__init__(*args, **kwargs)
        self.fields['image'].required = False
        
    
        
#    idNumber = forms.IntegerField(label='Número de Identificação')
#    local = forms.CharField(label='Local', max_length=255)
#    image = forms.ImageField(label='Foto do Equipamento')
