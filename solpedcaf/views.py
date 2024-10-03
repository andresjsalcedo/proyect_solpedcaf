from django.shortcuts import render, redirect
from django.contrib.auth import login as auth_login, logout as auth_logout
from django.contrib.auth.decorators import login_required
from .models import pagina_inicial
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


