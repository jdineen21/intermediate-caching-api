import requests
import requests_cache

from flask import Flask

url_prefix = "https://api.spacexdata.com/v3/"

requests_cache.install_cache('cache')

app = Flask(__name__)

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def catch_all(path):
    url = '%s%s' % (url_prefix, path)
    r = requests.get(url)
    return r.text

if __name__ == '__main__':
    app.run()