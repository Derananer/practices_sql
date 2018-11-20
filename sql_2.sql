SELECT * FROM DEPT; --1 Сформировать запрос, выводящий всю информацию из таблицы DEPT.

SELECT ENAME || ','|| JOB AS EMPLOYEE_DETAILS , SAL FROM EMP; /*2)Сформировать запрос, выводящий 2 столбца информации:
1) фамилию работника и, через запятую, его должность;
2) его зарплату за год.
Выходной столбец должен называться Employee Details.*/

SELECT ENAME, SAL FROM EMP WHERE SAL<=1500 OR SAL>=2850 ORDER BY ENAME; /*3)Сформировать запрос, выводящий фамилию и зарплату работников, зарплата которых
лежит вне диапазона от 1500$ до 2850$, отсортированных по фамилии работника.*/

SELECT ENAME, JOB, EMPNO FROM EMP WHERE EMPNO IN (7369,7499,3333); /*4)Сформировать запрос, выводящий фамилию, должность и номер работников, у которых
номера равны 1111, 2222 или 3333.*/

SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%'; /*5)Сформировать запрос, выводящий фамилии работников, у которых вторая буква
фамилии a.*/

SELECT ENAME,'*' || SAL, EMPNO FROM EMP WHERE LENGTH(ENAME)<=6; /*6)Сформировать запрос, выводящий фамилию, зарплату и номер работника, у которых
длина фамилии не превышает 6 символов. Перед значением зарплаты должны быть
выведены символы *.*/

SELECT ENAME, HIREDATE, ROUND((SYSDATE - HIREDATE)/30) AS MONTHS FROM EMP; /*7)Сформировать запрос, выводящий для каждого работника количество месяцев,
прошедшее с момента найма. Количество месяцев округлить до ближайшего целого,
отсортировать по убыванию срока работы.*/

SELECT ENAME, SAL, COMM, SAL+NVL(COMM,0) AS TOTAL_SAL FROM EMP; /*8)Сформировать запрос, выводящий фамилию служащего, зарплату, комиссионные и его
зарплату за год + комиссионные. В случае отсутствия комиссионных должна быть выведена
одна зарплата.*/

SELECT ENAME, NVL(TO_CHAR(COMM),'No commissions') AS COMMISSIONS FROM EMP;
SELECT ENAME, DECODE(COMM , (null), 'No commissions',
                              0, 'No commissions',
                              COMM) FROM EMP;  /*9)Сформировать запрос, выводящий фамилию служащего и его комиссионные. В случае
отсутствия комиссионных в столбце должно быть выведено “No commissions”.*/

SELECT DISTINCT JOB FROM EMP WHERE DEPTNO=30; /*10)Сформировать запрос, выводящий список должностей (уникальных) в подразделении 30.*/


SELECT EMP.ENAME, EMP.JOB, EMP.DEPTNO, DEPT.LOC FROM EMP, DEPT WHERE EMP.DEPTNO=DEPT.DEPTNO AND DEPT.LOC='DALLAS';/*11)Сформировать запрос, выводящий фамилию, должность, номер подразделения, всех
работников, работающих в городе Dallas.*/

SELECT WORKER.EMPNO || ',' || WORKER.ENAME AS WORKER, WORKER.MGR || ',' || MANAGER.ENAME AS MANAGER FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR = MANAGER.EMPNO;/*12)Сформировать запрос, выводящий фамилию и номер работника, а также фамилию и
номер его менеджера, исключая работников, не имеющих менеджеров.*/

SELECT DEPT.DNAME, DEPT.DEPTNO, EMP.ENAME, EMP.EMPNO FROM EMP,DEPT WHERE DEPT.DEPTNO = EMP.DEPTNO(+) ORDER BY DEPT.DEPTNO;/*13)Сформировать запрос, выводящий название и номер подразделения, включая
подразделения, в которых нет сотрудников. Если в подразделении работают сотрудники,
вывести их фамилии и номера.*/

SELECT EMP.ENAME, DEPT.DNAME, EMP.SAL, SALGRADE.GRADE FROM EMP,DEPT,SALGRADE WHERE EMP.DEPTNO=DEPT.DEPTNO AND EMP.SAL BETWEEN SALGRADE.LOSAL AND SALGRADE.HISAL;/*14)Сформировать запрос, выводящий фамилию работника, его подразделение, зарплату, и
разряд ЕТС.*/


SELECT * FROM BONUS;

