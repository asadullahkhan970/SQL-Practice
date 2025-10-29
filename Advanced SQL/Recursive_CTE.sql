-----Recursive CTE
-----Factorial of a given number (5)

with [R CTE] as (
--Anchor Query
select 1 as n

union all
--Recursive Query
select n+1 from [R CTE] where n<=4
)

select EXP(SUM(log(n))) [Factorial] from [R CTE]

----------------

with [r cte] as (
select 1 as n

union all 

select n+1 from [r cte] where n<=4
)
select * from [r cte]
