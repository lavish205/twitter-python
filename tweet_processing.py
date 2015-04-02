__author__ = 'lavish'
import operator
import pymysql
from nltk import *


haircut_type = dict()

def create_connection():
    conn = pymysql.connect(host='localhost',user='root',passwd='tech',db='tweet')
    return conn


def get_tweet():
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * from tweet_tweet")
    for id,tweet in cursor.fetchall():
        get_pos(tweet)

def get_pos(tweet):
    global haircut_type
    try:
        text = word_tokenize(str(tweet))
        pos = pos_tag(text)
        for name,type in pos:
            if not 't.co' in name:
                if type == ('JJ' or 'NN' or 'NNS' or 'NNP' or 'NNPS'):
                    if name in haircut_type.keys():
                        haircut_type[name] += 1
                    else:
                        haircut_type[name] = 1
    except UnicodeDecodeError:
        pass

get_tweet()

freq = sorted(haircut_type.items(), key=operator.itemgetter(1))
print freq[-1][0]