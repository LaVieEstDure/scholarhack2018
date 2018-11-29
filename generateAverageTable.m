function [yearlyVisitSorted] = generateAverageTable(table,inputArg2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
tableLen = length(table.Date);

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '00 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg0= sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '01 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg1 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '02 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg2 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '03 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg3 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '04 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg4 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '05 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg5 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '06 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg6 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '07 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg7 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '08 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg8 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '09 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg9 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '10 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg10 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '11 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg11 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '12 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg12 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '13 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg13 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '14 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg14 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '15 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg15 = sum/counter;


counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '16 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end
avg16= sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '17 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg17 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '18 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg18 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '19 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg19 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '20 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg20 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '21 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg21 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '22 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg22 = sum/counter;

counter = 0;
sum = 0;
for i = 1:tableLen
    if strcmp(table.Time(i), '23 00 00')
        sum = sum + table.Entries(i);
        counter = counter +1;
    end
end

avg23 = sum/counter;

intTime = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23]; 
avgEntriesColumn = [avg0 avg1 avg2 avg3 avg4 avg5 avg6 avg7 avg8 avg9 avg10 avg11 avg12 avg13 avg14 avg15 avg16 avg17 avg18 avg19 avg20 avg21 avg22 avg23]';


fullTable(:,1) = intTime;
fullTable(:,2) = avgEntriesColumn;

yearlyVisitSorted = rmmissing(fullTable);

end

