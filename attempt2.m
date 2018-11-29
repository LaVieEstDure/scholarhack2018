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

for i = 1: length(visit2006.Date)


%% Save to files
writetable(visit2006,'2006.csv');
writetable(visit2007,'2007.csv');
writetable(visit2008,'2008.csv');
writetable(visit2009,'2009.csv');
writetable(visit2010,'2010.csv');
writetable(visit2011,'2011.csv');
writetable(visit2012,'2012.csv');
writetable(visit2013,'2013.csv');
writetable(visit2014,'2014.csv');
writetable(visit2015,'2015.csv');