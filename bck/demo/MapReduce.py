from snakebite.client import Client
client = Client("10.21.137.43", 8020, use_trash=False)
for x in client.ls(['/']):
  print x

for x in client.text(['/testBrian/ttt.txt']):
  print x


# https://snakebite.readthedocs.io/en/latest/client.html
# Spotify

