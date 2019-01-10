import json

def convert_json(temp_file):
    with open(temp_file) as fid:
        d = json.load(fid)

    with open(temp_file, 'w') as fid:
        json.dump(d, fid, indent=2)

if __name__ == '__main__':
    convert_json('./temp.json')

