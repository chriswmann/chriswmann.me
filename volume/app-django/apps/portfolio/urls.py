from . import views
from django.conf.urls import url

urlpatterns = [
        url(r'', views.HomeView.as_view(), name='home'),
        ]

