from django.shortcuts import render
from django.http import HttpResponse
from .tasks import get_tweet
# Create your views here.


def get_data(request):
    get_tweet.delay('haircut')
    return HttpResponse('getting data')

def show_data(request):
    pass
