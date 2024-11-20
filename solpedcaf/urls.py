from django.urls import path
from .views import registro, login, logout, pagina_inicial_list, plagas_y_enfermedades_list, etapa_de_crecimiento_list, etapa_de_plantacion_list, etapa_de_fructificacion_list, etapa_de_floracion_list, consejos_para_su_cultivo_list, seleccion_semilla_list, cuidado_inicial_list, sembrado_list
from .views import fertilizacion_list, soluciones_para_su_cultivo_list, broca_list, roya_list, usuario_list, adminpanel_view, loginintraplas
from .views import registrointraplas,logoutintraplas

urlpatterns = [
    path('registro/', registro, name='registro'),
    path('login/', login, name='login'),
    path('logout/', logout, name='logout'),
    path('registrointraplas', registrointraplas, name='registrointraplas'),
    path('intraplas/', usuario_list, name='usuario_list'),
    path('loginintraplas', loginintraplas, name='loginintraplas'),
    path('logoutintraplas', logoutintraplas, name='logoutintraplas'),
    path('pagina_inicial/', pagina_inicial_list, name='pagina_inicial_list'),  # Asegúrate de que esta vista exista
    path('pagina_inicial/solpedcafplagas_y_enfermedades/', plagas_y_enfermedades_list, name='plagas_y_enfermedades_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_crecimiento/', etapa_de_crecimiento_list, name='etapa_de_crecimiento_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_plantacion/', etapa_de_plantacion_list, name='etapa_de_plantacion_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_fructificacion/', etapa_de_fructificacion_list, name='etapa_de_fructificacion_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_floracion/', etapa_de_floracion_list, name='etapa_de_floracion_list'),
    path('pagina_inicial/solpedcafconsejos_para_su_cultivo/', consejos_para_su_cultivo_list, name='consejos_para_su_cultivo_list'),
    path('pagina_inicial/solpedcafconsejos_para_su_cultivo/solpedcafseleccion_semilla/', seleccion_semilla_list, name='seleccion_semilla_list'),
    path('pagina_inicial/solpedcafconsejos_para_su_cultivo/solpedcafcuidado_inicial/', cuidado_inicial_list, name='cuidado_inicial_list'),
    path('pagina_inicial/solpedcafconsejos_para_su_cultivo/solpedcafsembrado/', sembrado_list, name='sembrado_list'),
    path('pagina_inicial/solpedcafconsejos_para_su_cultivo/solpedcafertilizacion/', fertilizacion_list, name='fertilizacion_list'),
    path('pagina_inicial/solpedcafsoluciones_para_su_cultivo/',soluciones_para_su_cultivo_list, name='soluciones_para_su_cultivo_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_fructificacion/broca/', broca_list, name='broca_list'),
    path('pagina_inicial/solpedcafplagas_y_enfermedades/solpedcafetapa_de_plantacion/roya/', roya_list, name='roya_list'),
    path('', login, name='login'),  # Redirige a la vista de inicio de sesión por defecto
]
