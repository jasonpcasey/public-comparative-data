*** CreatedSeptember 18, 2015                                ***;
*** Modify the path below to point to your data file         ***.
 
*** The specified subdirectory was not created on your       ***.
*** computer. You will need to do this.                      ***.
 
*** The stat program must be run against the specified       ***.
*** data file. This file is specified in the program and     ***.
*** must be saved separately                                 ***.
 
*** This program does not provide frequencies or             ***.
*** descriptives for all variables                           ***.
 
*** This program does not include reserved values in its     ***.
*** calculations for missing values                          ***.
 
*** There may be missing data for some institutions due to   ***.
*** the merge used to create this file                       ***.

get data /type = txt
/file = 'c:\dct\ic2014_ay.csv' 
/delcase = line
/delimiters = ","
/qualifier =  '"' 
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid    f6 
xtuit1   a1
tuition1  f5 
xfee1    a1
fee1      f5 
xhrchg1  a1
hrchg1    f5 
xtuit2   a1
tuition2  f5 
xfee2    a1
fee2      f5 
xhrchg2  a1
hrchg2    f5 
xtuit3   a1
tuition3  f5 
xfee3    a1
fee3      f5 
xhrchg3  a1
hrchg3    f5 
xtuit5   a1
tuition5  f5 
xfee5    a1
fee5      f5 
xhrchg5  a1
hrchg5    f5 
xtuit6   a1
tuition6  f5 
xfee6    a1
fee6      f5 
xhrchg6  a1
hrchg6    f5 
xtuit7   a1
tuition7  f5 
xfee7    a1
fee7      f5 
xhrchg7  a1
hrchg7    f5 
xispro1  a1
isprof1   f5 
xispfe1  a1
ispfee1   f5 
xospro1  a1
osprof1   f5 
xospfe1  a1
ospfee1   f5 
xispro2  a1
isprof2   f5 
xispfe2  a1
ispfee2   f5 
xospro2  a1
osprof2   f5 
xospfe2  a1
ospfee2   f5 
xispro3  a1
isprof3   f5 
xispfe3  a1
ispfee3   f5 
xospro3  a1
osprof3   f5 
xospfe3  a1
ospfee3   f5 
xispro4  a1
isprof4   f5 
xispfe4  a1
ispfee4   f5 
xospro4  a1
osprof4   f5 
xospfe4  a1
ospfee4   f5 
xispro5  a1
isprof5   f5 
xispfe5  a1
ispfee5   f5 
xospro5  a1
osprof5   f5 
xospfe5  a1
ospfee5   f5 
xispro6  a1
isprof6   f5 
xispfe6  a1
ispfee6   f5 
xospro6  a1
osprof6   f5 
xospfe6  a1
ospfee6   f5 
xispro7  a1
isprof7   f5 
xispfe7  a1
ispfee7   f5 
xospro7  a1
osprof7   f5 
xospfe7  a1
ospfee7   f5 
xispro8  a1
isprof8   f5 
xispfe8  a1
ispfee8   f5 
xospro8  a1
osprof8   f5 
xospfe8  a1
ospfee8   f5 
xispro9  a1
isprof9   f5 
xispfe9  a1
ispfee9   f5 
xospro9  a1
osprof9   f5 
xospfe9  a1
ospfee9   f5 
xchg1at0 a1
chg1at0   f5 
xchg1af0 a1
chg1af0   f5 
xchg1ay0 a1
chg1ay0   f5 
xchg1at1 a1
chg1at1   f5 
xchg1af1 a1
chg1af1   f5 
xchg1ay1 a1
chg1ay1   f5 
xchg1at2 a1
chg1at2   f5 
xchg1af2 a1
chg1af2   f5 
xchg1ay2 a1
chg1ay2   f5 
xchg1at3 a1
chg1at3   f5 
xchg1af3 a1
chg1af3   f5 
xchg1ay3 a1
chg1ay3   f5 
chg1tgtd  f3 
chg1fgtd  f3 
xchg2at0 a1
chg2at0   f5 
xchg2af0 a1
chg2af0   f5 
xchg2ay0 a1
chg2ay0   f5 
xchg2at1 a1
chg2at1   f5 
xchg2af1 a1
chg2af1   f5 
xchg2ay1 a1
chg2ay1   f5 
xchg2at2 a1
chg2at2   f5 
xchg2af2 a1
chg2af2   f5 
xchg2ay2 a1
chg2ay2   f5 
xchg2at3 a1
chg2at3   f5 
xchg2af3 a1
chg2af3   f5 
xchg2ay3 a1
chg2ay3   f5 
chg2tgtd  f3 
chg2fgtd  f3 
xchg3at0 a1
chg3at0   f5 
xchg3af0 a1
chg3af0   f5 
xchg3ay0 a1
chg3ay0   f5 
xchg3at1 a1
chg3at1   f5 
xchg3af1 a1
chg3af1   f5 
xchg3ay1 a1
chg3ay1   f5 
xchg3at2 a1
chg3at2   f5 
xchg3af2 a1
chg3af2   f5 
xchg3ay2 a1
chg3ay2   f5 
xchg3at3 a1
chg3at3   f5 
xchg3af3 a1
chg3af3   f5 
xchg3ay3 a1
chg3ay3   f5 
chg3tgtd  f3 
chg3fgtd  f3 
xchg4ay0 a1
chg4ay0   f5 
xchg4ay1 a1
chg4ay1   f5 
xchg4ay2 a1
chg4ay2   f5 
xchg4ay3 a1
chg4ay3   f5 
xchg5ay0 a1
chg5ay0   f5 
xchg5ay1 a1
chg5ay1   f5 
xchg5ay2 a1
chg5ay2   f5 
xchg5ay3 a1
chg5ay3   f5 
xchg6ay0 a1
chg6ay0   f5 
xchg6ay1 a1
chg6ay1   f5 
xchg6ay2 a1
chg6ay2   f5 
xchg6ay3 a1
chg6ay3   f5 
xchg7ay0 a1
chg7ay0   f5 
xchg7ay1 a1
chg7ay1   f5 
xchg7ay2 a1
chg7ay2   f5 
xchg7ay3 a1
chg7ay3   f5 
xchg8ay0 a1
chg8ay0   f5 
xchg8ay1 a1
chg8ay1   f5 
xchg8ay2 a1
chg8ay2   f5 
xchg8ay3 a1
chg8ay3   f5 
xchg9ay0 a1
chg9ay0   f5 
xchg9ay1 a1
chg9ay1   f5 
xchg9ay2 a1
chg9ay2   f5 
xchg9ay3 a1
chg9ay3   f5.

variable labels
unitid   'Unique identification number of the institution' 
xtuit1   'Imputation field for tuition1 - In-district average tuition for full-time undergraduates'
tuition1 'In-district average tuition for full-time undergraduates' 
xfee1    'Imputation field for fee1 - In-district required fees for full-time undergraduates'
fee1     'In-district required fees for full-time undergraduates' 
xhrchg1  'Imputation field for hrchg1 - In-district per credit hour charge for part-time undergraduates'
hrchg1   'In-district per credit hour charge for part-time undergraduates' 
xtuit2   'Imputation field for tuition2 - In-state average tuition for full-time undergraduates'
tuition2 'In-state average tuition for full-time undergraduates' 
xfee2    'Imputation field for fee2 - In-state required fees for full-time undergraduates'
fee2     'In-state required fees for full-time undergraduates' 
xhrchg2  'Imputation field for hrchg2 - In-state per credit hour charge for part-time undergraduates'
hrchg2   'In-state per credit hour charge for part-time undergraduates' 
xtuit3   'Imputation field for tuition3 - Out-of-state average tuition for full-time undergraduates'
tuition3 'Out-of-state average tuition for full-time undergraduates' 
xfee3    'Imputation field for fee3 - Out-of-state required fees for full-time undergraduates'
fee3     'Out-of-state required fees for full-time undergraduates' 
xhrchg3  'Imputation field for hrchg3 - Out-of-state per credit hour charge for part-time undergraduates'
hrchg3   'Out-of-state per credit hour charge for part-time undergraduates' 
xtuit5   'Imputation field for tuition5 - In-district average tuition full-time graduates'
tuition5 'In-district average tuition full-time graduates' 
xfee5    'Imputation field for fee5 - In-district required fees for full-time graduates'
fee5     'In-district required fees for full-time graduates' 
xhrchg5  'Imputation field for hrchg5 - In-district per credit hour charge part-time graduates'
hrchg5   'In-district per credit hour charge part-time graduates' 
xtuit6   'Imputation field for tuition6 - In-state average tuition full-time graduates'
tuition6 'In-state average tuition full-time graduates' 
xfee6    'Imputation field for fee6 - In-state required fees for full-time graduates'
fee6     'In-state required fees for full-time graduates' 
xhrchg6  'Imputation field for hrchg6 - In-state per credit hour charge part-time graduates'
hrchg6   'In-state per credit hour charge part-time graduates' 
xtuit7   'Imputation field for tuition7 - Out-of-state average tuition full-time graduates'
tuition7 'Out-of-state average tuition full-time graduates' 
xfee7    'Imputation field for fee7 - Out-of-state required fees for full-time graduates'
fee7     'Out-of-state required fees for full-time graduates' 
xhrchg7  'Imputation field for hrchg7 - Out-of-state per credit hour charge part-time graduates'
hrchg7   'Out-of-state per credit hour charge part-time graduates' 
xispro1  'Imputation field for isprof1 - Chiropractic: In-state tuition'
isprof1  'Chiropractic: In-state tuition' 
xispfe1  'Imputation field for ispfee1 - Chiropractic: In-state required fees'
ispfee1  'Chiropractic: In-state required fees' 
xospro1  'Imputation field for osprof1 - Chiropractic: Out-of-state tuition'
osprof1  'Chiropractic: Out-of-state tuition' 
xospfe1  'Imputation field for ospfee1 - Chiropractic: Out-of-state required fees'
ospfee1  'Chiropractic: Out-of-state required fees' 
xispro2  'Imputation field for isprof2 - Dentistry: In-state tuition'
isprof2  'Dentistry: In-state tuition' 
xispfe2  'Imputation field for ispfee2 - Dentistry: In-state required fees'
ispfee2  'Dentistry: In-state required fees' 
xospro2  'Imputation field for osprof2 - Dentistry: Out-of-state tuition'
osprof2  'Dentistry: Out-of-state tuition' 
xospfe2  'Imputation field for ospfee2 - Dentistry: Out-of-state required fees'
ospfee2  'Dentistry: Out-of-state required fees' 
xispro3  'Imputation field for isprof3 - Medicine: In-state tuition'
isprof3  'Medicine: In-state tuition' 
xispfe3  'Imputation field for ispfee3 - Medicine: In-state required fees'
ispfee3  'Medicine: In-state required fees' 
xospro3  'Imputation field for osprof3 - Medicine: Out-of-state tuition'
osprof3  'Medicine: Out-of-state tuition' 
xospfe3  'Imputation field for ospfee3 - Medicine: Out-of-state required fees'
ospfee3  'Medicine: Out-of-state required fees' 
xispro4  'Imputation field for isprof4 - Optometry: In-state tuition'
isprof4  'Optometry: In-state tuition' 
xispfe4  'Imputation field for ispfee4 - Optometry: In-state required fees'
ispfee4  'Optometry: In-state required fees' 
xospro4  'Imputation field for osprof4 - Optometry: Out-of-state tuition'
osprof4  'Optometry: Out-of-state tuition' 
xospfe4  'Imputation field for ospfee4 - Optometry: Out-of-state required fees'
ospfee4  'Optometry: Out-of-state required fees' 
xispro5  'Imputation field for isprof5 - Osteopathic Medicine: In-state tuition'
isprof5  'Osteopathic Medicine: In-state tuition' 
xispfe5  'Imputation field for ispfee5 - Osteopathic Medicine: In-state required fees'
ispfee5  'Osteopathic Medicine: In-state required fees' 
xospro5  'Imputation field for osprof5 - Osteopathic Medicine: Out-of-state tuition'
osprof5  'Osteopathic Medicine: Out-of-state tuition' 
xospfe5  'Imputation field for ospfee5 - Osteopathic Medicine: Out-of-state required fees'
ospfee5  'Osteopathic Medicine: Out-of-state required fees' 
xispro6  'Imputation field for isprof6 - Pharmacy: In-state tuition'
isprof6  'Pharmacy: In-state tuition' 
xispfe6  'Imputation field for ispfee6 - Pharmacy: In-state required fees'
ispfee6  'Pharmacy: In-state required fees' 
xospro6  'Imputation field for osprof6 - Pharmacy: Out-of-state tuition'
osprof6  'Pharmacy: Out-of-state tuition' 
xospfe6  'Imputation field for ospfee6 - Pharmacy: Out-of-state required fees'
ospfee6  'Pharmacy: Out-of-state required fees' 
xispro7  'Imputation field for isprof7 - Podiatry: In-state tuition'
isprof7  'Podiatry: In-state tuition' 
xispfe7  'Imputation field for ispfee7 - Podiatry: In-state required fees'
ispfee7  'Podiatry: In-state required fees' 
xospro7  'Imputation field for osprof7 - Podiatry: Out-of-state tuition'
osprof7  'Podiatry: Out-of-state tuition' 
xospfe7  'Imputation field for ospfee7 - Podiatry: Out-of-state required fees'
ospfee7  'Podiatry: Out-of-state required fees' 
xispro8  'Imputation field for isprof8 - Veterinary Medicine: In-state tuition'
isprof8  'Veterinary Medicine: In-state tuition' 
xispfe8  'Imputation field for ispfee8 - Veterinary Medicine: In-state required fees'
ispfee8  'Veterinary Medicine: In-state required fees' 
xospro8  'Imputation field for osprof8 - Veterinary Medicine: Out-of-state tuition'
osprof8  'Veterinary Medicine: Out-of-state tuition' 
xospfe8  'Imputation field for ospfee8 - Veterinary Medicine: Out-of-state required fees'
ospfee8  'Veterinary Medicine: Out-of-state required fees' 
xispro9  'Imputation field for isprof9 - Law: In-state tuition'
isprof9  'Law: In-state tuition' 
xispfe9  'Imputation field for ispfee9 - Law: In-state required fees'
ispfee9  'Law: In-state required fees' 
xospro9  'Imputation field for osprof9 - Law: Out-of-state tuition'
osprof9  'Law: Out-of-state tuition' 
xospfe9  'Imputation field for ospfee9 - Law: Out-of-state required fees'
ospfee9  'Law: Out-of-state required fees' 
xchg1at0 'Imputation field for chg1at0 - Published in-district tuition 2011-12'
chg1at0  'Published in-district tuition 2011-12' 
xchg1af0 'Imputation field for chg1af0 - Published in-district fees 2011-12'
chg1af0  'Published in-district fees 2011-12' 
xchg1ay0 'Imputation field for chg1ay0 - Published in-district tuition and fees 2011-12'
chg1ay0  'Published in-district tuition and fees 2011-12' 
xchg1at1 'Imputation field for chg1at1 - Published in-district tuition 2012-13'
chg1at1  'Published in-district tuition 2012-13' 
xchg1af1 'Imputation field for chg1af1 - Published in-district fees 2012-13'
chg1af1  'Published in-district fees 2012-13' 
xchg1ay1 'Imputation field for chg1ay1 - Published in-district tuition and fees 2012-13'
chg1ay1  'Published in-district tuition and fees 2012-13' 
xchg1at2 'Imputation field for chg1at2 - Published in-district tuition 2013-14'
chg1at2  'Published in-district tuition 2013-14' 
xchg1af2 'Imputation field for chg1af2 - Published in-district fees 2013-14'
chg1af2  'Published in-district fees 2013-14' 
xchg1ay2 'Imputation field for chg1ay2 - Published in-district tuition and fees 2013-14'
chg1ay2  'Published in-district tuition and fees 2013-14' 
xchg1at3 'Imputation field for chg1at3 - Published in-district tuition 2014-15'
chg1at3  'Published in-district tuition 2014-15' 
xchg1af3 'Imputation field for chg1af3 - Published in-district fees 2014-15'
chg1af3  'Published in-district fees 2014-15' 
xchg1ay3 'Imputation field for chg1ay3 - Published in-district tuition and fees 2014-15'
chg1ay3  'Published in-district tuition and fees 2014-15' 
chg1tgtd 'Published in-district tuition 2014-15 guaranteed percent increase (if applicable)' 
chg1fgtd 'Published in-district fees 2014-15 guaranteed percent increase (if applicable)' 
xchg2at0 'Imputation field for chg2at0 - Published in-state tuition 2011-12'
chg2at0  'Published in-state tuition 2011-12' 
xchg2af0 'Imputation field for chg2af0 - Published in-state fees 2011-12'
chg2af0  'Published in-state fees 2011-12' 
xchg2ay0 'Imputation field for chg2ay0 - Published in-state tuition and fees 2011-12'
chg2ay0  'Published in-state tuition and fees 2011-12' 
xchg2at1 'Imputation field for chg2at1 - Published in-state tuition 2012-13'
chg2at1  'Published in-state tuition 2012-13' 
xchg2af1 'Imputation field for chg2af1 - Published in-state fees 2012-13'
chg2af1  'Published in-state fees 2012-13' 
xchg2ay1 'Imputation field for chg2ay1 - Published in-state tuition and fees 2012-13'
chg2ay1  'Published in-state tuition and fees 2012-13' 
xchg2at2 'Imputation field for chg2at2 - Published in-state tuition 2013-14'
chg2at2  'Published in-state tuition 2013-14' 
xchg2af2 'Imputation field for chg2af2 - Published in-state fees 2013-14'
chg2af2  'Published in-state fees 2013-14' 
xchg2ay2 'Imputation field for chg2ay2 - Published in-state tuition and fees 2013-14'
chg2ay2  'Published in-state tuition and fees 2013-14' 
xchg2at3 'Imputation field for chg2at3 - Published in-state tuition 2014-15'
chg2at3  'Published in-state tuition 2014-15' 
xchg2af3 'Imputation field for chg2af3 - Published in-state fees 2014-15'
chg2af3  'Published in-state fees 2014-15' 
xchg2ay3 'Imputation field for chg2ay3 - Published in-state tuition and fees 2014-15'
chg2ay3  'Published in-state tuition and fees 2014-15' 
chg2tgtd 'Published in-state tuition 2014-15 guaranteed percent increase (if applicable)' 
chg2fgtd 'Published in-state fees 2014-15 guaranteed percent increase (if applicable)' 
xchg3at0 'Imputation field for chg3at0 - Published out-of-state tuition 2011-12'
chg3at0  'Published out-of-state tuition 2011-12' 
xchg3af0 'Imputation field for chg3af0 - Published out-of-state fees 2011-12'
chg3af0  'Published out-of-state fees 2011-12' 
xchg3ay0 'Imputation field for chg3ay0 - Published out-of-state tuition and fees 2011-12'
chg3ay0  'Published out-of-state tuition and fees 2011-12' 
xchg3at1 'Imputation field for chg3at1 - Published out-of-state tuition 2012-13'
chg3at1  'Published out-of-state tuition 2012-13' 
xchg3af1 'Imputation field for chg3af1 - Published out-of-state fees 2012-13'
chg3af1  'Published out-of-state fees 2012-13' 
xchg3ay1 'Imputation field for chg3ay1 - Published out-of-state tuition and fees 2012-13'
chg3ay1  'Published out-of-state tuition and fees 2012-13' 
xchg3at2 'Imputation field for chg3at2 - Published out-of-state tuition 2013-14'
chg3at2  'Published out-of-state tuition 2013-14' 
xchg3af2 'Imputation field for chg3af2 - Published out-of-state fees 2013-14'
chg3af2  'Published out-of-state fees 2013-14' 
xchg3ay2 'Imputation field for chg3ay2 - Published out-of-state tuition and fees 2013-14'
chg3ay2  'Published out-of-state tuition and fees 2013-14' 
xchg3at3 'Imputation field for chg3at3 - Published out-of-state tuition 2014-15'
chg3at3  'Published out-of-state tuition 2014-15' 
xchg3af3 'Imputation field for chg3af3 - Published out-of-state fees 2014-15'
chg3af3  'Published out-of-state fees 2014-15' 
xchg3ay3 'Imputation field for chg3ay3 - Published out-of-state tuition and fees 2014-15'
chg3ay3  'Published out-of-state tuition and fees 2014-15' 
chg3tgtd 'Published out-of-state tuition 2014-15 guaranteed percent increase (if applicable)' 
chg3fgtd 'Published out-of-state fees 2014-15 guaranteed percent increase (if applicable)' 
xchg4ay0 'Imputation field for chg4ay0 - Books and supplies 2011-12'
chg4ay0  'Books and supplies 2011-12' 
xchg4ay1 'Imputation field for chg4ay1 - Books and supplies 2012-13'
chg4ay1  'Books and supplies 2012-13' 
xchg4ay2 'Imputation field for chg4ay2 - Books and supplies 2013-14'
chg4ay2  'Books and supplies 2013-14' 
xchg4ay3 'Imputation field for chg4ay3 - Books and supplies 2014-15'
chg4ay3  'Books and supplies 2014-15' 
xchg5ay0 'Imputation field for chg5ay0 - On campus, room and board 2011-12'
chg5ay0  'On campus, room and board 2011-12' 
xchg5ay1 'Imputation field for chg5ay1 - On campus, room and board 2012-13'
chg5ay1  'On campus, room and board 2012-13' 
xchg5ay2 'Imputation field for chg5ay2 - On campus, room and board 2013-14'
chg5ay2  'On campus, room and board 2013-14' 
xchg5ay3 'Imputation field for chg5ay3 - On campus, room and board 2014-15'
chg5ay3  'On campus, room and board 2014-15' 
xchg6ay0 'Imputation field for chg6ay0 - On campus, other expenses 2011-12'
chg6ay0  'On campus, other expenses 2011-12' 
xchg6ay1 'Imputation field for chg6ay1 - On campus, other expenses 2012-13'
chg6ay1  'On campus, other expenses 2012-13' 
xchg6ay2 'Imputation field for chg6ay2 - On campus, other expenses 2013-14'
chg6ay2  'On campus, other expenses 2013-14' 
xchg6ay3 'Imputation field for chg6ay3 - On campus, other expenses 2014-15'
chg6ay3  'On campus, other expenses 2014-15' 
xchg7ay0 'Imputation field for chg7ay0 - Off campus (not with family), room and board 2011-12'
chg7ay0  'Off campus (not with family), room and board 2011-12' 
xchg7ay1 'Imputation field for chg7ay1 - Off campus (not with family), room and board 2012-13'
chg7ay1  'Off campus (not with family), room and board 2012-13' 
xchg7ay2 'Imputation field for chg7ay2 - Off campus (not with family), room and board 2013-14'
chg7ay2  'Off campus (not with family), room and board 2013-14' 
xchg7ay3 'Imputation field for chg7ay3 - Off campus (not with family), room and board 2014-15'
chg7ay3  'Off campus (not with family), room and board 2014-15' 
xchg8ay0 'Imputation field for chg8ay0 - Off campus (not with family), other expenses 2011-12'
chg8ay0  'Off campus (not with family), other expenses 2011-12' 
xchg8ay1 'Imputation field for chg8ay1 - Off campus (not with family), other expenses 2012-13'
chg8ay1  'Off campus (not with family), other expenses 2012-13' 
xchg8ay2 'Imputation field for chg8ay2 - Off campus (not with family), other expenses 2013-14'
chg8ay2  'Off campus (not with family), other expenses 2013-14' 
xchg8ay3 'Imputation field for chg8ay3 - Off campus (not with family), other expenses 2014-15'
chg8ay3  'Off campus (not with family), other expenses 2014-15' 
xchg9ay0 'Imputation field for chg9ay0 - Off campus (with family), other expenses 2011-12'
chg9ay0  'Off campus (with family), other expenses 2011-12' 
xchg9ay1 'Imputation field for chg9ay1 - Off campus (with family), other expenses 2012-13'
chg9ay1  'Off campus (with family), other expenses 2012-13' 
xchg9ay2 'Imputation field for chg9ay2 - Off campus (with family), other expenses 2013-14'
chg9ay2  'Off campus (with family), other expenses 2013-14' 
xchg9ay3 'Imputation field for chg9ay3 - Off campus (with family), other expenses 2014-15'
chg9ay3  'Off campus (with family), other expenses 2014-15'.
*The following are the possible values for the item imputation field variables
*A  'Not applicable'
*B  'Institution left item blank'
*C  'Analyst corrected reported value'
*D  'Do not know'
*G  'Data generated from other data values'
*H  'Value not derived - data not usable'
*J  'Logical imputation'
*K  'Ratio adjustment'
*L  'Imputed using the Group Median procedure'
*N  'Imputed using Nearest Neighbor procedure'
*P  'Imputed using Carry Forward procedure'
*R  'Reported'
*Y  'Specific professional practice program not applicable'
*Z  'Implied zero'

frequencies variables=
xtuit1   xfee1    xhrchg1  xtuit2   xfee2    xhrchg2  xtuit3   xfee3    xhrchg3 
xtuit5   xfee5    xhrchg5  xtuit6   xfee6    xhrchg6  xtuit7   xfee7    xhrchg7  xispro1 
xispfe1  xospro1  xospfe1  xispro2  xispfe2  xospro2  xospfe2  xispro3  xispfe3  xospro3 
xospfe3  xispro4  xispfe4  xospro4  xospfe4  xispro5  xispfe5  xospro5  xospfe5  xispro6 
xispfe6  xospro6  xospfe6  xispro7  xispfe7  xospro7  xospfe7  xispro8  xispfe8  xospro8 
xospfe8  xispro9  xispfe9  xospro9  xospfe9  xchg1at0 xchg1af0 xchg1ay0 xchg1at1 xchg1af1
xchg1ay1 xchg1at2 xchg1af2 xchg1ay2 xchg1at3 xchg1af3 xchg1ay3 xchg2at0
xchg2af0 xchg2ay0 xchg2at1 xchg2af1 xchg2ay1 xchg2at2 xchg2af2 xchg2ay2 xchg2at3 xchg2af3
xchg2ay3 xchg3at0 xchg3af0 xchg3ay0 xchg3at1 xchg3af1 xchg3ay1 xchg3at2
xchg3af2 xchg3ay2 xchg3at3 xchg3af3 xchg3ay3 xchg4ay0 xchg4ay1 xchg4ay2
xchg4ay3 xchg5ay0 xchg5ay1 xchg5ay2 xchg5ay3 xchg6ay0 xchg6ay1 xchg6ay2 xchg6ay3 xchg7ay0
xchg7ay1 xchg7ay2 xchg7ay3 xchg8ay0 xchg8ay1 xchg8ay2 xchg8ay3 xchg9ay0 xchg9ay1 xchg9ay2
xchg9ay3 .

descriptives variables=
tuition1 fee1     hrchg1   tuition2 fee2     hrchg2   tuition3 fee3     hrchg3  
tuition5 fee5     hrchg5   tuition6 fee6     hrchg6   tuition7 fee7     hrchg7   isprof1 
ispfee1  osprof1  ospfee1  isprof2  ispfee2  osprof2  ospfee2  isprof3  ispfee3  osprof3 
ospfee3  isprof4  ispfee4  osprof4  ospfee4  isprof5  ispfee5  osprof5  ospfee5  isprof6 
ispfee6  osprof6  ospfee6  isprof7  ispfee7  osprof7  ospfee7  isprof8  ispfee8  osprof8 
ospfee8  isprof9  ispfee9  osprof9  ospfee9  chg1at0  chg1af0  chg1ay0  chg1at1  chg1af1 
chg1ay1  chg1at2  chg1af2  chg1ay2  chg1at3  chg1af3  chg1ay3  chg1tgtd chg1fgtd chg2at0 
chg2af0  chg2ay0  chg2at1  chg2af1  chg2ay1  chg2at2  chg2af2  chg2ay2  chg2at3  chg2af3 
chg2ay3  chg2tgtd chg2fgtd chg3at0  chg3af0  chg3ay0  chg3at1  chg3af1  chg3ay1  chg3at2 
chg3af2  chg3ay2  chg3at3  chg3af3  chg3ay3  chg3tgtd chg3fgtd chg4ay0  chg4ay1  chg4ay2 
chg4ay3  chg5ay0  chg5ay1  chg5ay2  chg5ay3  chg6ay0  chg6ay1  chg6ay2  chg6ay3  chg7ay0 
chg7ay1  chg7ay2  chg7ay3  chg8ay0  chg8ay1  chg8ay2  chg8ay3  chg9ay0  chg9ay1  chg9ay2 
chg9ay3 
/stats=def.

save outfile='ic2014_ay.sav' /compressed.
