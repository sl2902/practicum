import requests
import pandas as pd
import numpy as np
from bs4 import BeautifulSoup

url = r'https://code.s3.yandex.net/data-analyst-eng/chicago_weather_2017.html'
response = None
try:
    response = requests.get(url)
except Exception as e:
    print(e)
    print('Request failed with error code {}'.format(response.status_code)) if response is not None else None
r = response.text
soup = BeautifulSoup(r, 'lxml')

cols = []
for tree in soup.find_all('th'):
    cols.append(tree.text)

data, r = [], []
for idx, tree in enumerate(soup.find_all('td')):
    # print(tree.text)
    r.append(tree.text)
    if idx != 0 and (idx+1) % 3 == 0:
        data.append(r)
        r = []

weather_records = pd.DataFrame(data, columns=cols)
print(weather_records)