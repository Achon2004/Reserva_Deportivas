
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('Instalaciones/', include('Instalaciones.urls')),
]
