from celery import task


__author__ = 'lavish'
from .models import Tweet
from TwitterAPI import TwitterAPI

@task
def get_tweet(keyword):
    api = TwitterAPI(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN_KEY, ACCESS_TOKEN_SECRET)

    # r = api.request('statuses/filter', {'track': "haircut"})
    try:
        iterator = api.request('statuses/filter', {'track': "haircut"}).get_iterator()
        for item in iterator:
            if 'text' in item:
                try:
                    Tweet.objects.create(tweets=(item['text']).encode('ascii','ignore'))

                except Exception as e:
                    print(e.message)


            elif 'disconnect' in item:
                event = item['disconnect']
                if event['code'] in [2, 5, 6, 7]:
                    # something needs to be fixed before re-connecting
                    raise Exception(event['reason'])
                else:
                    # temporary interruption, re-try request
                    break

    except:
        # if e.status_code < 500:
        # # something needs to be fixed before re-connecting
        #     raise
        # else:
        #     # temporary interruption, re-try request
        #     pass
        pass