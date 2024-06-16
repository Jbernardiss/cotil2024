
from django.urls import path

from . import views

urlpatterns = [
    path('cadastro/', views.cadastro, name='cadastro'),
    path('consulta/', views.consulta, name='consulta'),
    path('edicao/<int:id>/', views.edicao, name='edicao')
]
