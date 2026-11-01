from django.shortcuts import render, redirect, get_object_or_404
from django.core.paginator import Paginator
from .models import Instalacion
from .forms import InstalacionForm


def lista_instalaciones(request):
    qs = Instalacion.objects.all().order_by('id')
    paginator = Paginator(qs, 10)
    instalaciones = paginator.get_page(request.GET.get('page'))

    return render(
        request,
        'Instalaciones/lista.html',
        {'instalaciones': instalaciones}
    )


def crear_instalacion(request):
    if request.method == 'POST':
        form = InstalacionForm(request.POST)

        if form.is_valid():
            form.save()
            return redirect('Instalaciones:lista')
    else:
        form = InstalacionForm()

    return render(
        request,
        'Instalaciones/formulario.html',
        {'form': form, 'titulo': 'Nueva instalación'}
    )


def editar_instalacion(request, pk):
    instalacion = get_object_or_404(Instalacion, pk=pk)

    if request.method == 'POST':
        form = InstalacionForm(request.POST, instance=instalacion)

        if form.is_valid():
            form.save()
            return redirect('Instalaciones:lista')
    else:
        form = InstalacionForm(instance=instalacion)

    return render(
        request,
        'Instalaciones/formulario.html',
        {'form': form, 'titulo': f'Editar instalación {instalacion.nombre}'}
    )



def eliminar_instalacion(request, pk):
    instalacion = get_object_or_404(Instalacion, pk=pk)

    if request.method == 'POST':
        instalacion.delete()
        return redirect('Instalaciones:lista')

    return redirect('Instalaciones:lista')