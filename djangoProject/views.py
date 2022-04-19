import datetime

from django.http import HttpResponse


def index(request):
    return HttpResponse("Hello, world " + str(datetime.datetime.now()))
