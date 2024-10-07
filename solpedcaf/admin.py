from django.contrib import admin
from .models import pagina_inicial
from .models import plagas_y_enfermedades
from .models import etapa_de_crecimiento
from .models import etapa_de_plantacion
from .models import etapa_de_fructificacion
from .models import etapa_de_floracion
from .models import consejos_para_su_cultivo

# Register your models here.

admin.site.register(pagina_inicial)

admin.site.register(plagas_y_enfermedades)

admin.site.register(etapa_de_crecimiento)

admin.site.register(etapa_de_plantacion)

admin.site.register(etapa_de_fructificacion)

admin.site.register(etapa_de_floracion)

admin.site.register(consejos_para_su_cultivo)