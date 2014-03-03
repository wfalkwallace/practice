from django.contrib import admin
from models import Author, Tweet

# Register your models here.

class AuthorAdmin(admin.ModelAdmin):
	list_display = ('first_name', 'last_name')
	search_fields = ('first_name', 'last_name')

class TweetAdmin(admin.ModelAdmin):
	list_display = ('tweet', 'author')
	# , necessary - has to be a tuple
	search_fields = ('tweet',)

admin.site.register(Author, AuthorAdmin)
admin.site.register(Tweet, TweetAdmin)
