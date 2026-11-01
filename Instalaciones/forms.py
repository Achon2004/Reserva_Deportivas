from django import forms
from .models import Instalacion, Reserva


class InstalacionForm(forms.ModelForm):
    class Meta:
        model = Instalacion
        fields = ['nombre', 'tipo', 'ubicacion', 'descripcion', 'estado']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo': forms.TextInput(attrs={'class': 'form-control'}),
            'ubicacion': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
            'estado': forms.Select(attrs={'class': 'form-select'}),
        }


class ReservaForm(forms.ModelForm):
    class Meta:
        model = Reserva
        fields = [
            'instalacion',
            'fecha',
            'hora_inicio',
            'hora_fin',
            'estado',
        ]
        widgets = {
            'fecha': forms.DateInput(attrs={'type': 'date'}),
            'hora_inicio': forms.TimeInput(attrs={'type': 'time'}),
            'hora_fin': forms.TimeInput(attrs={'type': 'time'}),
        }