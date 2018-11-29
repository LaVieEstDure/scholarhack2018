%% clear and close
close all; clear all; clc;

%% load data
visits = readtable('refined.csv');

%% sort from early to late in the day
visitsSorted = sortrows(visits,4);

%% remove unecessary columns
visitsSorted.Var1 = [];
visitsSorted.DoorName = [];
visitsSorted.Level = [];
%% Split into 9 tables
minYear = 2006;
maxYear = 2015;
count2006 = 0;
count2007 = 0;
count2008 = 0;
count2009=0;
count2010=0;
count2011=0;
count2012=0;
count2013=0;
count2014=0;
count2015=0;

for i = 1:length(visitsSorted.Date)
    if visitsSorted.Date(i) == 2006
        count2006 = count2006 +1;
        visit2006(count2006,:) = visitsSorted(i,:);
    
    elseif visitsSorted.Date(i) == 2007
        count2007 = count2007 +1;
        visit2007(count2007,:) = visitsSorted(i,:);
    
    elseif visitsSorted.Date(i) == 2008
        count2008 = count2008 +1;
        visit2008(count2008,:) = visitsSorted(i,:);
        
    elseif visitsSorted.Date(i) == 2009
        count2009 = count2009 +1;
        visit2009(count2009,:) = visitsSorted(i,:);
    
    elseif visitsSorted.Date(i) == 2010
        count2010 = count2010 +1;
        visit2010(count2010,:) = visitsSorted(i,:);
        
    elseif visitsSorted.Date(i) == 2011
        count2011 = count2011 +1;
        visit2011(count2011,:) = visitsSorted(i,:);
    
    elseif visitsSorted.Date(i) == 2012
        count2012 = count2012 +1;
        visit2012(count2012,:) = visitsSorted(i,:);
        
    elseif visitsSorted.Date(i) == 2013
        count2013 = count2013 +1;
        visit2013(count2013,:) = visitsSorted(i,:);
    
    elseif visitsSorted.Date(i) == 2014
        count2014 = count2014 +1;
        visit2014(count2014,:) = visitsSorted(i,:);
        
    elseif visitsSorted.Date(i) == 2015
        count2015 = count2015 +1;
        visit2015(count2015,:) = visitsSorted(i,:);
    end
    
end

%% find totals for each time of day
avgVisits2006 = generateAverageTable(visit2006);
avgVisits2007 = generateAverageTable(visit2007);
avgVisits2008 = generateAverageTable(visit2008);
avgVisits2009 = generateAverageTable(visit2009);
avgVisits2010 = generateAverageTable(visit2010);
avgVisits2011 = generateAverageTable(visit2011);
avgVisits2012 = generateAverageTable(visit2012);
avgVisits2013 = generateAverageTable(visit2013);
avgVisits2014 = generateAverageTable(visit2014);
avgVisits2015 = generateAverageTable(visit2015);


%% Save to files
csvwrite('avg2006.csv',avgVisits2006);
csvwrite('avg2007.csv',avgVisits2007);
csvwrite('avg2008.csv',avgVisits2008);
csvwrite('avg2009.csv',avgVisits2009);
csvwrite('avg2010.csv',avgVisits2010);
csvwrite('avg2011.csv',avgVisits2011);
csvwrite('avg2012.csv',avgVisits2012);
csvwrite('avg2013.csv',avgVisits2013);
csvwrite('avg2014.csv',avgVisits2014);
csvwrite('avg2015.csv',avgVisits2015);
