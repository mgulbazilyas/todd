import requests
import random
import string

ids = [322, 323, 324, 325, 326, 327, 328, 330, 331]  # 329,321
cookie_value = '7cvtum1hbxib37ywvpmzrwwclkjwvkdx'
path = 'sessediihaiciox2fgw3'
password = 'fm0EtkvyupWTDyn'  # get_random_string(15)


def get_random_string(length):
    # choose from all lowercase letter
    letters = string.ascii_lowercase + string.digits + string.ascii_uppercase
    
    result_str = ''.join(random.choice(letters) for i in range(length))
    print("Random string of length", length, "is:", result_str)
    return result_str


def reinstall_os(ids):
    for id in ids:
        url = f"https://vps.control-panel.in:4083/{path}/index.php?api=json&act=ostemplate&jsnohf=1&svs={id}"
        
        payload = f"newpass={password}&conf={password}&newos=100001&reinsos=1"
        headers = {
            'Connection': 'keep-alive',
            'sec-ch-ua': '" Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"',
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'sec-ch-ua-mobile': '?0',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
            'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
            'Origin': 'https://vps.control-panel.in:4083',
            'Sec-Fetch-Site': 'same-origin',
            'Sec-Fetch-Mode': 'cors',
            'Sec-Fetch-Dest': 'empty',
            'Referer': f'https://vps.control-panel.in:4083/{path}/index.php?',
            'Accept-Language': 'en-US,en;q=0.9',
            'Cookie': f'SIMCookies4750_sid={cookie_value}'
        }
        
        response = requests.request("POST", url, headers=headers, data=payload)
        
        print(response.text)
        
        yield response


def reset_password():
    for i in ids:
        url = f"https://vps.control-panel.in:4083/{path}/index.php?api=json&act=changepassword&svs={i}"
        
        payload = f"newpass={password}&conf={password}&changepass=1"
        headers = {
            'Connection': 'keep-alive',
            'sec-ch-ua': '" Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"',
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'sec-ch-ua-mobile': '?0',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
            'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
            'Origin': 'https://vps.control-panel.in:4083',
            'Sec-Fetch-Site': 'same-origin',
            'Sec-Fetch-Mode': 'cors',
            'Sec-Fetch-Dest': 'empty',
            'Referer': f'https://vps.control-panel.in:4083/{path}/index.php?',
            'Accept-Language': 'en-US,en;q=0.9',
            'Cookie': f'SIMCookies4750_sid={cookie_value}'
        }
        
        response = requests.request("POST", url, headers=headers, data=payload)
        
        print(response.text)
        
        url = f"https://vps.control-panel.in:4083/{path}/index.php?api=json&svs={i}&act=restart&do=1"
        
        payload = {}
        headers = {
            'Connection': 'keep-alive',
            'sec-ch-ua': '" Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"',
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'X-Requested-With': 'XMLHttpRequest',
            'sec-ch-ua-mobile': '?0',
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)'
                          ' Chrome/91.0.4472.124 Safari/537.36',
            'Sec-Fetch-Site': 'same-origin',
            'Sec-Fetch-Mode': 'cors',
            'Sec-Fetch-Dest': 'empty',
            'Referer': f'https://vps.control-panel.in:4083/{path}/index.php?',
            'Accept-Language': 'en-US,en;q=0.9',
            'Cookie': f'SIMCookies4750_sid={cookie_value}'
        }
        
        response = requests.request("GET", url, headers=headers, data=payload, timeout=900)
        
        print(response.text)
