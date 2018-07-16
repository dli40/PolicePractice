for i in range(1,31):
     ones = str(i%10)
     if i>9:
         tens='1'
     if i>19:
         tens='2'
     if i>29 :
         tens='3'

     date = '2016-07-'+ tens+ ones
     print("date is: ", date)
     payload = {'q': 'San+Leandro', 'date': date, 'format': 'json', 'key': '[weather api key]'}
     response = requests.get("https://api.worldweatheronline.com/premium/v1/past-weather.ashx", params=payload)
     responseList.append(response.json())

with open('weather.json',"w") as outfile:
    json.dump(responseList,outfile)

