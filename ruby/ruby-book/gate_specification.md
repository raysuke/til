```
天神
210	博多
260	260	福岡空港
```

## テストシナリオ
1. 210円
	- IN 天神 OUT 博多
		- OK
	- IN 天神 OUT 福岡空港
		- NG
	- IN 博多 OUT 福岡空港
		- NG
2. 260円
	- IN 天神 OUT 博多
		- OK
	- IN 天神 OUT 福岡空港
		- OK
	- IN 博多 OUT 福岡空港
		- OK
