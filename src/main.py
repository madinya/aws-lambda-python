import requests


def handler(event, context):
    req_response = requests.get('https://api.github.com')
    return req_response.json()
