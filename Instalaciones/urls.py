from django.urls import path
from . import views

app_name = 'Instalaciones'

urlpatterns = [
    path('', views.lista_instalaciones, name='lista'),
    path('nueva/', views.crear_instalacion, name='crear'),
    path('<int:pk>/editar/', views.editar_instalacion, name='editar'),
    path('<int:pk>/eliminar/', views.eliminar_instalacion, name='eliminar'),
]