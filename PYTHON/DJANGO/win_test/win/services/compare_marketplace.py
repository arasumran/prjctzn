import requests
import pandas as pd
import numpy as np

class compare_marketplaces(object):

    def __init__(self):
        pass
    def request_to_marketplace(self):
        try:
            response = requests.get("my_url")
        except:
            response = []
    def execute_task(self):
        binance_coins_url = "https://www.binance.com/exchange-api/v2/public/asset-service/product/get-products?includeEtf=true"
        result = self.request_to_marketplace(binance_coins_url)
        df = pd.DataFrame(np.array(result))
        df = df.filter(items=["an","qv",])

