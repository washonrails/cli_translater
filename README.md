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
