from django.conf.urls import url
from . import views

app_name = 'obras'
urlpatterns = [
    # ex: /polls/
    url(r'^$', views.IndexView.as_view(), name='index'),
]