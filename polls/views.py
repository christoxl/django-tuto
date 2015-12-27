# from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return HttpResponse("Hola mundo. Estas en el index de polls")

def detail(request, question_id):
    return HttpResponse("Estás viendo la pregunta %s." % question_id)

def results(request, question_id):
    return HttpResponse("Estás viendo los resultados de la pregunta %s." % question_id)

def vote(request, question_id):
    return HttpResponse("Estás votando en la pregunta %s." % question_id)