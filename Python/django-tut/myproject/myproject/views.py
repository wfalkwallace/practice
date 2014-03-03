from django.http import HttpResponse
import datetime
import random
from django.shortcuts import render_to_response
from forms import TweetForm
from sampletwitter.models import Author, Tweet
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def post_tweet(request):
	c = {}
	if request.method == 'POST':
		form = TweetForm(request.POST)
		if form.is_valid():
			cd = form.cleaned_data
			first_name = cd['first_name']
			last_name = cd['last_name']
			tweet = cd['tweet']
			current_authors = Author.objects.filter(first_name=first_name).filter(last_name=last_name)
			if (len(current_authors) == 1):
				author = current_authors[0]
			else:
				author = Author.create(first=first_name, last=last_name)
				author.save()
			tweet = Tweet.create(tweet=tweet, author=author)
			tweet.save()
			form = TweetForm()
	else:
		form = TweetForm()
	c['form'] = form
	tweets = Tweet.objects.all()
	c['tweets'] = tweets
	return render_to_response('twitter.html', c)

def hello(request):
	return HttpResponse("Hello World!")

def home(request):
	return HttpResponse("We're Home!")

#views always take requests
def time(request):
	now = datetime.datetime.now()
	html = "<html><head><title>My Time</title></head><body>It is now %s.</body></html>" % now
	return HttpResponse(html)

def rand(response):
	rand = random.randint(1,6)
	c = {}
	c['random'] = rand
	return render_to_response('home.html', c)

def search(request):
	if 'q' in request.GET:
		message = "You seached for: %r" % request.GET['q']
	else:
		message = "You seached for NOTHING"
		return HttpResponse(message)
