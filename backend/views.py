from django.shortcuts import render
from django.http.response import HttpResponse
# Create your views here.

def hello(request):

    return render(request, 'build/index.html')
    # return HttpResponse('Hello World')