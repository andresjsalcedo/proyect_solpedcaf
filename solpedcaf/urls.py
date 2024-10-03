from django.urls import path
from .views import registro, login, logout, pagina_inicial_list

urlpatterns = [
    path('registro/', registro, name='registro'),
    path('login/', login, name='login'),
    path('logout/', logout, name='logout'),
    path('pagina_inicial/', pagina_inicial_list, name='pagina_inicial_list'),  # Asegúrate de que esta vista exista
    path('', login, name='login'),  # Redirige a la vista de inicio de sesión por defecto
]
