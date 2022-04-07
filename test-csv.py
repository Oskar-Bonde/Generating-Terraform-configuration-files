import csv

file = open('data/train-raw/bq-more-size.csv', 'r', encoding='utf-8', errors='ignore')

csvfile = csv.reader(file)

print(next(csvfile))

print(next(csvfile))