# Pewlett Hackard Analysis
Helping the company Pewlett Hackard to create a database will all the employees eligible for a retirement package using SQL.

At first, we did an anlysis to help the company determine how many people will be retiring and, of those employees, who were eligible for a retirement package.
We did a list with the Retirement Eligibility. The list was created with two conditionals: only for people born between 1952 and 1955 and the second condition that they were also hired between 1985 and 1988. With that, we found 41,380 employees that fitted the criteria.

### Retirement Eligibility
![image](https://user-images.githubusercontent.com/43974872/195868182-15e64f3d-802e-4396-81c5-537b36dee885.png)

### Current Employees
We found that some of the employees founded may not even work with the company anymore. So, we created a new list with another condition, that they must be a current employee. That narrowed it to 33,118 current employees.

![image](https://user-images.githubusercontent.com/43974872/195869290-bf383358-67fd-40da-b793-01742c3b7990.png)

### Retiring Employees by Department
However, we do not know how many employees there are per department. To do this, we use group by to filter by department number. The result disagrees, since the number of employees now reaches 36,619 employees which tells us that there are several employees, a question that must be resolved by the Managment Department. Although, the variation could be due to promotions or changes of departments.

![image](https://user-images.githubusercontent.com/43974872/195870408-33412547-bc2f-4be6-9ec6-1540ab2fcb18.png)

### Employee, Managment and Department Information

Because of the number of people leaving each department, the boss has requested three lists that are more specific:

1. *Employee Information*: A list of employees containing their unique employee number, their last name, first name, gender, and salary.

![image](https://user-images.githubusercontent.com/43974872/195873667-69d953df-0d2b-4684-8d36-40bf5f53567f.png)

2. *Management*: A list of managers for each department, including the department number, name, and the manager's employee number, last name, first name, and the starting and ending employment dates. But we found only five departments with active managers, another question for Managment Department.

![image](https://user-images.githubusercontent.com/43974872/195874345-f23c0f18-edea-4c18-bb7a-bb27b3aec927.png)

3. *Department Retirees*: An updated current_emp list that includes everything it currently has, but also the employee's departments. The results, shows employees appearing twice in diferents departments. 

![image](https://user-images.githubusercontent.com/43974872/195874480-82907dd3-38b6-4ab8-84b9-f072d29970bc.png)

### Sales and Development Departments
One of the managers asked for a list of retiring employees in both the Sales and Development departments.

1. *Sales*: We found, 5,860 retiring employees only in Sales.

![image](https://user-images.githubusercontent.com/43974872/195876170-1c3660a9-feea-4011-81b9-dfc67be8ebd5.png)

2. *Sales & Development*: The list incremented considerably when we searched for retiring employees for both departments. Now, there ar 15,141 retiring employees.

![image](https://user-images.githubusercontent.com/43974872/195876409-7cf0c50c-1229-4322-b6e1-b1418c8676c9.png)

### Number of Retiring Employees by Title
We create a *Retirement Titles* table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the list, due to promotions, we only selected those with the most recent title of each employee. Then, we use a condition for the number of retirement-age employees by most recent job title. An also, we only included current employees in our analysis, excluded those employees who have already left the company. We found 133,776 retiring employees, but there are duplicate entries for some employees because they have switched titles over the years, the results shows us only 72,458 employees ready to retire. 

Also we create a list with the reitirn number of employees by title. So , we can look that we are going to need two nes managers in the future.
We did an extra list, how many ritring employees by departmen name and we found the the Development Department is the one with major comming vaccancies.

- Retiring employees by title(complete)
- 
![image](https://user-images.githubusercontent.com/43974872/195878672-28577bce-7771-467f-8243-f5639450f6f3.png)

- Reitring employees by title (unique results)

![image](https://user-images.githubusercontent.com/43974872/195878771-170e9306-5255-45ec-9874-d38f9ef83527.png)

- Retiring number by titles

![image](https://user-images.githubusercontent.com/43974872/195879388-d194b3bd-fd46-48f9-a5f6-b1d39cc2c951.png)

- Retirng number by department name.

![image](https://user-images.githubusercontent.com/43974872/195880399-5da47f78-c4e1-4ffb-868a-9058aa50701a.png)


### The Employees Eligible for the Mentonrship Program

# 


