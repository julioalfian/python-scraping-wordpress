import requests
import re
from conn import connection

def request(c):
    r = requests.get(c)
    # print(r.content)
    text = str(r.content)
    return text

def split_title(text):
    title = text.split("<title>")[1]
    title = title.split("</title>")[0]
    return title

def split_snippet(text):
    snippet = text.split("mw-content-text")[1]
    clean = cleanhtml(snippet)[45:545]
    return clean

def cleanhtml(raw_html):
    cleanr = re.compile('<.*?>')
    cleantext = re.sub(cleanr, '', raw_html)
    return cleantext

def remove_tags(text):
    TAG_RE = re.compile(r'<[^>]+>')
    return TAG_RE.sub('', text)

def add(url, title, content):
    cursor = connection.cursor()
    cursor.execute('SELECT url, title, snippet FROM content WHERE url=%s', (url))
    data = cursor.fetchall()
    if len(data)==0:
        cursor.execute('INSERT INTO content (url, title, snippet) VALUES (%s, %s, %s)', (url, title, content))
        connection.commit()
        return "url:"+url+" title:"+title+" snippet:"+content
    else:
        return data

c = str(input("masukkan url:"))
text = request(c)
title = split_title(text)
snippet = split_snippet(text)
insert = add(c, title, snippet)
print(insert)



