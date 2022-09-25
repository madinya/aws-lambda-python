import logging
import json
import requests
logger = logging.getLogger()
logger.setLevel(logging.INFO)


def handler(event, context):
    request_response = requests.get('https://api.github.com')
    response = request_response.json()
    return {"statusCode": 200, "body": json.dumps(response)}
