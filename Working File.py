# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
import numpy as np
import math as m
import pandas as pd
import copy
from bokeh_plot import *

class Data:
    def __init__(self, file):
        data = pd.read_csv(file)
        self.data = data
        yrs = len(set(data.Year))
        self.times = []
        
        self.places = {' Heritage Collections Entry': 0,
                     ' Infozone': 0,
                     ' John Oxley Collection': 0,
                     ' Micrographics': 0,
                     ' Phillip Bacon Gallery': 0,
                     ' Reception/Security': 0,
                     ' SLQ Indemnified Gallery': 0,
                     ' The Edge': 0,
                     ' The Library Shop': 0}
        self.levels = {' Heritage Collections Entry': 4,
                     ' Infozone': 1,
                     ' John Oxley Collection': 4,
                     ' Micrographics': 3,
                     ' Phillip Bacon Gallery': 4,
                     ' Reception/Security': 1,
                     ' SLQ Indemnified Gallery': 2,
                     ' The Edge': 1,
                     ' The Library Shop': 1}
        self.Levels = {"1": [' Infozone', ' Reception/Security', ' The Edge', 
                             ' The Library Shop'], "2": [' SLQ Indemnified Gallery'],
                        "3":[' Micrographics'], "4":[' Phillip Bacon Gallery',
                            ' Heritage Collections Entry', ' John Oxley Collection']}
                        
    
        for time in range(24*365*yrs):
            self.times.append(copy.deepcopy(self.places))
        inds = []
        for row in range(int(len(self.data)/5)):
            data = self.data.loc[row]
            yr = int(data.Year)
            hr = int(data.Time[0:2])
            month = int(data.Month)
            d = int(data.Day)
            m = 0
            for i in range(month)[1:]:
                if i == 2:
                    m += 28
                elif i in [4,6,11,9]:
                    m += 30
                else:
                    m += 31
            
            ind = (yr - 2006)*(24*365) + (m+d-1)*24 + hr
            self.times[ind][data.Room] = data.Entries
        print(len(self.times))
        topop = []
        for ind in range(len(self.times)):
            vals = list(set(self.times[ind].values()))
            if len(vals) == 1 and vals[0] == 0:
                topop.append(ind)
        popper = len(topop)
        for i in range(popper):
            self.times.pop(popper - (i+1))
        
if __name__=="__main__":
    data = Data("refined.csv")
    