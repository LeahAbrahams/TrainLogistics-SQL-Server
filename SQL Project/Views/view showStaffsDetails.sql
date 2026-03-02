create view showStaffsDetails 
as
	select s.firstName + ' ' + s.lastName as Name, s.ID, r.roleName as Job, t.ID as numberOfTrain, s.monthlySalary as Salary
	from roles r
	join staff s
	on s.roleType = r.roleType
	join staff_trains st
	on s.ID = st.staffID
	join trains t
	on st.trainID = t.ID