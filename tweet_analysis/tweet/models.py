from django.db import models

# Create your models here.
class Tweet(models.Model):
    tweets = models.CharField(max_length=140, unique=True)

    def __unicode__(self):
        return self.tweets