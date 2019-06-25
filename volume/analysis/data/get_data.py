'''Module to get environmental monitoring data from
https://data.gov.uk/dataset/24542ae7-dd44-444f-b259-871c4cc43b5e/environmental-monitoring-data
'''

import re

from bs4 import BeautifulSoup
import pandas as pd
from urllib.request import urlopen


data_site_url = "https://data.gov.uk/dataset/24542ae7-dd44-444f-b259-871c4cc43b5e/environmental-monitoring-data"

html_page = urlopen(data_site_url)
soup = BeautifulSoup(html_page)
pattern = re.compile("^https://.+\.zip")
data_links = []
data_links = [link.get('href') for link in soup.findAll('a', attrs={'href': pattern})]
print(data_links)