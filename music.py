# -*- coding: utf-8 -*-
import matplotlib as plt
import numpy as np
import math as m
import csv
import winsound


def read_csv (input_file): 
    times = []
    nums = []
 
    with open(input_file) as csvDataFile:
        csvReader = csv.reader(csvDataFile)
        for row in csvReader:
            times.append(row[0])
            nums.append(row[1])
    
    return (nums)

def sound (people):
    
    for i in range (len(people)):
        if float(people[i]) < 2:
            winsound.Beep(300,500)
        
        elif float(people[i]) < 10:
            winsound.Beep(400,500)
            
        elif float(people[i]) < 20:
            winsound.Beep(500,500)
        elif float(people[i]) < 30:
            winsound.Beep(600,500)
        elif float(people[i]) < 40:
            winsound.Beep(700,500)
        elif float(people[i]) < 50:
            winsound.Beep(800,500)
        elif float(people[i]) < 100:
            winsound.Beep(1000,500)
        elif float(people[i]) < 200:
            winsound.Beep (1500 , 500)
        else:
            winsound.Beep (1700,500)
            
year1 = read_csv('avg2007.csv')
year2 = read_csv('avg2008.csv')
year3 = read_csv('avg2009.csv')
year4 = read_csv('avg2010.csv')
year5 = read_csv('avg2011.csv')
year6 = read_csv('avg2012.csv')
year7 = read_csv('avg2013.csv')
year8 = read_csv('avg2014.csv')
year9 = read_csv('avg2015.csv')
sound(year1)
sound(year2)
sound(year3)
sound(year4)
sound(year5)
sound(year6)
sound(year7)
sound(year8)
sound(year9)
