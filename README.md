# Command Line Translater Awesome README [![Awesome](https://cdn.jsdelivr.net/gh/sindresorhus/awesome@d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome#readme)
## ❓ What is cli_translater?
The name is self-described , an command line where your text is translated to another language in a fast-n-easy form.

## ⚙️ How it works?
You send a source text to an intermediate Api translater which make all the proccess and send back the text translated. (API used on final of this file)
```

API return a json with the translated text
<p> And we asign the text translated to an variable instance , which will send to log function </p>

```ruby
{
    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/json'
    request["X-RapidAPI-Key"] = '0ee2368128mshfbe96f93a6b18a1p1c6b93jsn478a278ca5df'
    request["X-RapidAPI-Host"] = 'rapid-translate-multi-traduction.p.rapidapi.com'
    request.body = "{
        \"from\": \"#{source}\",
        \"to\": \"#{trans}\",
        \"e\": \"\",
        \"q\": [
            \"#{text}\"
        ]
    }"

    response = http.request(request)
    data = JSON.parse(response.body)
    new_data = Log.new data

}
```

### Avaliable Languages

- Portugues
- English
- Espanol
- French
- Russian
- Japanese

</details>

### 🔐 How to set password:
<details>
  <summary><b>Set password - example </b></summary>
  
```py
# exemple in Python
import requests

data = {
  "token": "VXaK8WlI89Ya9ptx437ozLAatt2yUJ",
  "password": "mypassword",
  "url": "https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley"
}

response = requests.post(url="https://bitlink.vercel.app/api", data=data)
```

API return a json with the shortened link and the information that was recorded in the API database:

```json
{
"limit":null,
"password":"mypassword",
"short":"https://bitlink.vercel.app/CmnkWwvY",
"url":"https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley"
}
```

</details>

## 🔒 Password check
If a short link that has a password is accessed, the person will be redirected to the authentication page.

### 🔑 Where is the password authenticated? 
<a> The password entered by the user is sent to the cloud for authentication, so it is guaranteed that it will not be possible to edit the page to bypass
