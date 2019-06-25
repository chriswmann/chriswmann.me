from django.shortcuts import render
from django.utils import timezone
from django.views.generic import TemplateView

class HomeView(TemplateView):
    def get(self, request):
        context = {}
        return render(request, 'portfolio/index.html', context)

