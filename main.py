import json
import uuid

ips = '''
41.216.186.199
41.216.186.180
41.216.186.202
41.216.186.204
41.216.186.203
41.216.186.205
41.216.186.206
41.216.186.207
41.216.186.208
41.216.186.209
41.216.186.210
'''.split('\n')
# ips = ['65.21.171.'+str(i) for i in range(210,221)]

if __name__ == '__main__':
    
    for ip in ips:
        if ip.strip():
         print(json.dumps({
             "HostName": ip,
            "GroupId": "711907df-2272-434f-911c-3d5aacc01b65",
            "FriendlyName": "",
            "CredentialsId": "2bf8f1a1-4d73-4c86-9206-5cf70fd769f2",
             "LocalResourcesSettings": {
             "RedirectClipboard": True,
         "PersistentModelId": "00000000-0000-0000-0000-000000000000"
            },
         "PersistentModelId": str(uuid.uuid4())
            }, indent = 4), ',')
        