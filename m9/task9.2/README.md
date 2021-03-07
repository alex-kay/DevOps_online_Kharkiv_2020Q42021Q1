# Task 9.2 Docker

## Using docker lection2 create a docker image with Python Flask app that displays random cat pix

* I will make a same flask-app as in lecture, but with cat gif images taken from other source:

`app.py`

```python
from flask import Flask, render_template
import random

app = Flask(__name__)

# list of cat images
images = [
    "https://64.media.tumblr.com/1ac7a11fe877d64aea9f1db599ef36c7/tumblr_mna355DUxq1s8dwazo1_400.gifv",
    "https://64.media.tumblr.com/c4e62a2f896ffdf2d9ffd2062e498b21/tumblr_mmx33i3h101s8dwazo1_500.gifv",
    "https://64.media.tumblr.com/237de920dc778e50b2fe78eac4216a87/tumblr_mm1gguAkqZ1s8dwazo1_250.gifv",
    "https://64.media.tumblr.com/e4b6f6d29af5fca5524de7440766f524/tumblr_mlxzwvxZ6N1s8dwazo1_250.gifv",
    "https://64.media.tumblr.com/17a0f471c3058f38855ab0a0de8a7089/tumblr_mlu34cL5l31s8dwazo1_250.gif",
    "https://64.media.tumblr.com/c9584712bf0bab48241478935455b979/tumblr_mlobtspeS61s8dwazo1_400.gif",
    "https://64.media.tumblr.com/11d0c46350da900fd6b48eb7dba6edec/tumblr_mlks7zsj1W1s8dwazo1_400.gif",
    "https://64.media.tumblr.com/160aab1aa405cbdc04538015ce72d956/tumblr_mlkjcv2thF1s8dwazo1_400.gif",
    "https://64.media.tumblr.com/cbdeaa99a1765f309c4ade76846fc74c/tumblr_mlfkg9OwgO1s8dwazo1_250.gif",
    "https://64.media.tumblr.com/7300d160ca54715e77099f0f98771dc9/tumblr_ml8hyuXelF1s8dwazo1_500.gif",
    "https://64.media.tumblr.com/46e26db0e75a7a4a5916f7d42bb31186/tumblr_ml0sfkcyJi1s8dwazo1_250.gif",
    "https://64.media.tumblr.com/b2e29fce0f7d3f5f4d86269300f90692/tumblr_mkqwuaQBBo1s8dwazo1_400.gif"
]

@app.route('/')

def index():
    url = random.choice(images)
    return render_template('index.html', url=url)

if __name__ == "__main__":
    app.run(host="0.0.0.0")
```

* Build docker image:

![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m9/task9.2/Screenshots/Screenshot%202021-03-07%20at%2003.34.27.jpg)

* Run docker container:

![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m9/task9.2/Screenshots/Screenshot%202021-03-07%20at%2003.41.37.jpg)

* View app in browser:

![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m9/task9.2/Screenshots/Screenshot%202021-03-07%20at%2003.37.41.jpg)

* Pushed image to Docker Hub:

![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m9/task9.2/Screenshots/Screenshot%202021-03-07%20at%2003.52.13.jpg)

Image now available at [alexkaydocker/mycatapp](https://hub.docker.com/r/alexkaydocker/mycatapp)
