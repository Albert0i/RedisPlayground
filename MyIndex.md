### My Index

#### Prologue

#### I. Introduction

#### I. Data Model

HMSET "MYINDEX:DISK:HOME:TV-5T" uid 11 brand "Seagate" model "One Touch with Password" capacity "5T" PN "3FRAPC-500" SN "NAE56BKZ" purchaseAt "2024/02/23" description "TV and Movies" 

ZADD "MYINDEX:INDEX:卡拉馬佐夫兄弟" 11 "\\\\HOME:TV-5T\\10. 經典文學\\[1969][劇情] 卡拉馬佐夫兄弟 The Brothers Karamazov"

ZADD "MYINDEX:INDEX:卡拉馬佐夫兄弟" 11 "\\\\HOME:TV-5T\\10. 經典文學\\[2009][俄羅斯]《卡拉馬佐夫兄弟》(全12集)"


#### II. Data Relationship


#### III. Programs 
```
node src/scandisk.js 
Usage: scandisk <Path-to-scan> <Index-Prefix> <uid>

node src/scandisk.js "F:\" "HOME:TV-5T" 11
```


#### Epilogue


### EOF (2024/11/10)