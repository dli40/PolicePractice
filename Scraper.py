from bs4 import BeautifulSoup
from urllib.request import urlopen

class Scraper:
    url = 'https://www.census.gov/quickfacts/fact/table/alamedacountycalifornia/PST045217'
    response = urlopen(url)
    string = response.read().decode('utf-8') #STRING CONTAINS LITERALLY EVERYTHING IN THE URL
    soup = BeautifulSoup(string, 'html5lib') #converting to beautifulsoujp object to use methods
    print(soup.title)



