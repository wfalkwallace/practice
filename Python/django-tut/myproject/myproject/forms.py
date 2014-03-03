from django import forms

class TweetForm(forms.Form):
	first_name = forms.CharField(max_length=30)
	last_name = forms.CharField(max_length=40)
	tweet = forms.CharField(max_length=140)