SELECT MIN(SAL), ROUND(AVG(SAL)), MAX(SAL), SUM(SAL) FROM EMP;/*1)Сформировать запрос, выводящий минимальную, среднюю, максимальную и суммарную
зарплату всех работников.*/

SELECT COUNT(COMM) FROM EMP;/*2)Сформировать запрос, выводящий количество служащих, получающих комиссионные.*/

SELECT DEPTNO, MIN(SAL) FROM EMP GROUP BY DEPTNO HAVING MIN(SAL)< 1000;/*3)Сформировать запрос, выводящий номера подразделений и самую низкую зарплату
среди служащих этого подразделения, исключая подразделения, для которых данное число менее 1000$*/

SELECT MIN(AVG(SAL+NVL(COMM,0))) MIN_AVG FROM EMP GROUP BY DEPTNO;/*4)Сформировать запрос, выводящий минимальный средний доход (зарплата +
комиссионные) среди всех подразделений.*/

SELECT EMPNO, ENAME FROM EMP WHERE MGR=(SELECT MGR FROM EMP WHERE EMPNO=7782) AND NOT EMPNO=7782;/*5)Сформировать запрос, выводящий номера и фамилии сотрудников, у которых менеджер
тот же человек, что и у сотрудника с номером 2221.*/

SELECT EMPNO, ENAME, DEPTNO, SAL FROM EMP WHERE SAL > (SELECT AVG(SAL) FROM EMP);/*6)Сформировать запрос, выводящий номера, фамилии и зарплаты всех сотрудников, у
которых зарплата выше средней.*/

SELECT ENAME, DEPTNO, SAL, COMM FROM EMP EMP1 WHERE DEPTNO = ANY(SELECT DEPTNO FROM EMP EMP2 WHERE EMP1.EMPNO<>EMP2.EMPNO) AND SAL = ANY(SELECT SAL FROM EMP EMP2 WHERE EMP1.EMPNO<>EMP2.EMPNO) AND COMM > 0;/*7)Сформировать запрос, выводящий фамилию, номер подразделения и зарплату
работников, чьи номер подразделения и зарплата совпадают (одновременно) с номером
подразделения и зарплатой любого из работников, получающих комиссионные.*/

SELECT EMPNO, ENAME FROM EMP WHERE SAL>(SELECT MAX(SAL) FROM EMP E WHERE E.JOB = 'CLERK');/*9)Сформировать запрос, выводящий номера и имена работников, зарплата которых больше
зарплаты любого из клерков.*/


SELECT EMPNO, ENAME FROM EMP WHERE SAL > ALL(SELECT SAL FROM EMP E WHERE E.JOB = 'CLERK');/*9)Сформировать запрос, выводящий номера и имена работников, зарплата которых больше
зарплаты любого из клерков.*/

