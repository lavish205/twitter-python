__author__ = 'lavish'
from django.conf.urls import patterns, url


urlpatterns = patterns('tweet.views',
                       # Examples:
                       # url(r'^$', 'tweet_analysis.views.home', name='home'),
                       # url(r'^blog/', include('blog.urls')),
                       url(r'^get/$', 'get_data', name='get_data'),
                       )

