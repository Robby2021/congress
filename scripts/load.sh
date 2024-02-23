#!/bin/sh/ bash

#Bill data
usc-run govinfo --bulkdata=BILLSTATUS
usc-run bills --govtrack $@

#Vote data
usc-run votes --govtrack --congress=101 --session=1990 $@
usc-run votes --govtrack --congress=102 --session=1991 $@
usc-run votes --govtrack --congress=102 --session=1992 $@
usc-run votes --govtrack --congress=103 --session=1993 $@
usc-run votes --govtrack --congress=103 --session=1994 $@
usc-run votes --govtrack --congress=104 --session=1995 $@
usc-run votes --govtrack --congress=104 --session=1996 $@
usc-run votes --govtrack --congress=105 --session=1997 $@
usc-run votes --govtrack --congress=105 --session=1998 $@
usc-run votes --govtrack --congress=106 --session=1999 $@
usc-run votes --govtrack --congress=106 --session=2000 $@
usc-run votes --govtrack --congress=107 --session=2001 $@
usc-run votes --govtrack --congress=107 --session=2002 $@
usc-run votes --govtrack --congress=108 --session=2003 $@
usc-run votes --govtrack --congress=108 --session=2004 $@
usc-run votes --govtrack --congress=109 --session=2005 $@
usc-run votes --govtrack --congress=109 --session=2006 $@
usc-run votes --govtrack --congress=110 --session=2007 $@
usc-run votes --govtrack --congress=110 --session=2008 $@
usc-run votes --govtrack --congress=111 --session=2009 $@
usc-run votes --govtrack --congress=111 --session=2010 $@
usc-run votes --govtrack --congress=112 --session=2011 $@
usc-run votes --govtrack --congress=112 --session=2012 $@
usc-run votes --govtrack --congress=113 --session=2013 $@
usc-run votes --govtrack --congress=113 --session=2014 $@
usc-run votes --govtrack --congress=114 --session=2015 $@
usc-run votes --govtrack --congress=114 --session=2016 $@
usc-run votes --govtrack --congress=115 --session=2017 $@
usc-run votes --govtrack --congress=115 --session=2018 $@
usc-run votes --govtrack --congress=116 --session=2019 $@
usc-run votes --govtrack --congress=116 --session=2020 $@
usc-run votes --govtrack --congress=117 --session=2021 $@
usc-run votes --govtrack --congress=117 --session=2022 $@
usc-run votes --govtrack --congress=118 --session=2023 $@
usc-run votes --govtrack --congress=118 --session=2024 $@

#Statutes data
usc-run govinfo --collections=STATUTE --extract=mods,pdf
usc-run statutes --volumes=65-86 --govtrack 
usc-run statutes --volumes=65-106 --textversions --extracttext 