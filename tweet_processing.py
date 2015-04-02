__author__ = 'lavish'
import operator
import pymysql
from nltk import *

# global variable for storing type and its frequency
haircut_type = dict()

def create_connection():
    # creating connection
    conn = pymysql.connect(host='localhost',user='root',passwd='tech',db='tweet')
    return conn


def get_tweet():
    conn = create_connection()
    cursor = conn.cursor()
    # getting all tweets from database
    cursor.execute("SELECT * from tweet_tweet")
    for id,tweet in cursor.fetchall():
        get_pos(tweet)

def get_pos(tweet):
    global haircut_type
    try:
        text = word_tokenize(str(tweet)) # tokenizing sentence
        pos = pos_tag(text) # getting pos of tokens
        for name,type in pos:
            if not 't.co' in name: # ignoring links of twitter
                if type == ('JJ' or 'NN' or 'NNS' or 'NNP' or 'NNPS'): # checking the token is noun or adjective
                    if name in haircut_type.keys(): # if token key exists then increase its count
                        haircut_type[name] += 1
                    else:
                        haircut_type[name] = 1 # else create a new key
    except UnicodeDecodeError:
        pass

get_tweet()

freq = sorted(haircut_type.items(), key=operator.itemgetter(1)) # sorting dict according to values
print freq[-1][0] # printing the type of haircut in trending