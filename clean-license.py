import re

file = open('samples/remove-license.txt', 'r')
license = file.read()

def remove_license(input):
    input = re.sub('/[*][\S\s]+(license|License|Copyright|copyright|WARRANTIES)+[\S\s]+[*]/','', input)
    input = re.sub('#.+(license|License|Copyright|copyright|WARRANTIES| law )+.+\n','', input)
    input = re.sub('#\n','', input)
    #input = re.sub('""',"'", input)
    return input

license = remove_license(license)

print(license)
