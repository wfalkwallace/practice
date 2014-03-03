from django.db import models

# Create your models here.

class Author(models.Model):
	first_name = models.CharField(max_length=30)
	last_name = models.CharField(max_length=40)
	#specific field types (for everything) on django.com
	@classmethod
	def create(cls, first, last):
		author = cls(first_name=first, last_name=last)
		return author

class Tweet(models.Model):
	tweet = models.CharField(max_length=140)
	author = models.ForeignKey(Author)
	@classmethod
	def create(cls, tweet, author):
		tweet = cls(tweet=tweet, author=author)
		return tweet
		