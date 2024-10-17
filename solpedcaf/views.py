from django.shortcuts import render, redirect
from django.contrib.auth import login as auth_login, logout as auth_logout
from django.contrib.auth.decorators import login_required
from .models import pagina_inicial
from .models import plagas_y_enfermedades
from .models import etapa_de_crecimiento
from .models import etapa_de_plantacion
from .models import etapa_de_fructificacion
from .models import etapa_de_floracion
from .models import consejos_para_su_cultivo
from .models import seleccion_semilla
from .models import cuidado_inicial
from .models import sembrado
from .models import fertilizacion
from .models import broca
from .models import soluciones_para_su_cultivo
from .forms import RegistroForm, LoginForm

# Vista para listar objetos de la modelo 'pagina_inicial'
def pagina_inicial_list(request):
    pagina_inicials = pagina_inicial.objects.all()
    return render(request, 'pagina_inicial/post/list.html', {'pagina_inicials': pagina_inicials})

# Vista para el registro de usuarios
def registro(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = RegistroForm()
    return render(request, 'pagina_inicial/registro.html', {'form': form})

# Vista para el inicio de sesión
def login(request):
    if request.method == 'POST':
        form = LoginForm(request, data=request.POST)
        if form.is_valid():
            user = form.get_user()
            auth_login(request, user)
            return redirect('pagina_inicial_list')  # Redirige a la lista después de iniciar sesión
    else:
        form = LoginForm()
    return render(request, 'pagina_inicial/login.html', {'form': form})

# Vista para cerrar sesión
@login_required
def logout(request):
    auth_logout(request)
    return redirect('login')

# Vista para la página inicial protegida
@login_required
def pagina_inicial_view(request):
    return render(request, 'pagina_inicial/pagina_inicial.html', {'user': request.user})


#vista para la pagina plagas y enfermedades 

def plagas_y_enfermedades_list(request):
    plagas_y_enfermedadess = plagas_y_enfermedades.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/post/list.html', {'plagas_y_enfermedadess': plagas_y_enfermedadess})


#vista para etapa de crecimiento del modulo plagas y enfermedades

def etapa_de_crecimiento_list(request):
    etapa_de_crecimientos = etapa_de_crecimiento.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/etapa_de_crecimiento/post/list.html', {'etapa_de_crecimientos': etapa_de_crecimientos}
    )

#vista para etapa de plantacion del modulo plagas y enfermedades

def etapa_de_plantacion_list(request):
    etapa_de_plantacions = etapa_de_plantacion.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/etapa_de_plantacion/post/list.html', {'etapa_de_plantacions': etapa_de_plantacions}
    )


#vista para etapa de fructificacion del modulo plagas y enfermedades

def etapa_de_fructificacion_list(request):
    etapa_de_fructificacions = etapa_de_fructificacion.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/etapa_de_fructificacion/post/list.html', {'etapa_de_fructificacions': etapa_de_fructificacions}
    )

#vista para etapa de floracion del modulo plagas y enfermedades

def etapa_de_floracion_list(request):
    etapa_de_floracions = etapa_de_floracion.objects.all()
    return render(
        request,
        'plagas_y_enfermedades/etapa_de_floracion/post/list.html', {'etapa_de_floracions': etapa_de_floracions}
    )


#vista para consejos para su cultivo

def consejos_para_su_cultivo_list(request):
    consejos_para_su_cultivos = consejos_para_su_cultivo.objects.all()
    return render(
        request,
        'consejos_para_su_cultivo/post/list.html', {'consejos_para_su_cultivos': consejos_para_su_cultivos}
    )


#vista para seleccion semilla de consejos para su cultivo

def seleccion_semilla_list(request):
    seleccion_semillas = seleccion_semilla.objects.all()
    return render(
        request,
        'consejos_para_su_cultivo/seleccion_semilla/post/list.html', {'seleccion_semillas': seleccion_semillas}
    )

#vista para cuidado inicial de consejos para su cultivo

def cuidado_inicial_list(request):
    cuidado_inicials = cuidado_inicial.objects.all()
    return render(
        request,
        'consejos_para_su_cultivo/cuidado_inicial/post/list.html', {'cuidado_inicials': cuidado_inicials}
    )


#vistas para sembrado de consejos para su cultivo 

def sembrado_list(request):
    sembrados = sembrado.objects.all()
    return render(
        request,
        'consejos_para_su_cultivo/sembrado/post/list.html', {'sembrados': sembrados}
    )


#vistas para fertilizacion de consejos para su cultivo 

def fertilizacion_list(request):
    fertilizacions = fertilizacion.objects.all()
    return render(
        request,
        'consejos_para_su_cultivo/fertilizacion/post/list.html', {'fertilizacions': fertilizacions}
    )


#vista para consejos para su cultivo

def soluciones_para_su_cultivo_list(request):
    soluciones_para_su_cultivos = soluciones_para_su_cultivo.objects.all()
    return render(
        request,
        'soluciones_para_su_cultivo/post/list.html', {'soluciones_para_su_cultivos': soluciones_para_su_cultivos}
    )


#vista para broca

def broca_list(request):
    brocas = broca.objects.all()
    return render(
        request,
        'broca/post/list.html', {'brocas': brocas}
    )