from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'myproject.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^hello/', 'myproject.views.hello', name='hello'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', 'myproject.views.home', name='home'),
    url(r'^time/', 'myproject.views.time', name='time'),
    url(r'^random/', 'myproject.views.rand', name='random'),
    url(r'^tweets/', 'myproject.views.post_tweet', name='post_tweet')
)

#what does name do?
#
