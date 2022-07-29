Create table State
(
	StateId int primary Key,
	StateName varchar(50)
);

Create table MST_City
(
	CityId     int primary key,
	CityName   varchar(250) not null,
	Pincode    varchar(6) null,
	StateId	   int not null,
	CityRemarks  varchar(500) null
);


--PR_MST_City_SelectAll
Create procedure PR_MST_City_SelectAll
AS
BEGIN
	Select 
	Mst_City.cityID,
	Mst_City.CityName,
	Mst_City.Pincode,
	Mst_City.CityRemarks,
	Mst_City.StateID,
	state.StateId,
	State.StateName
from MST_City
inner join State
on MST_City.CityId = State.StateId
End

--PR_MST_City_Insert
create procedure PR_MST_City_Insert
	@CityId		int,     
	@CityName	varchar(250),   
	@Pincode	varchar(6), 
	@StateId	int,   
	@CityRemarks varchar(500)
AS
BEGIN
insert into MST_City
(
	CityId,	
	CityName,	
	pincode,	
	CityRemarks,
	StateId  
) 
values
(
	@CityId,	
	@CityName,	
	@pincode,	
	@CityRemarks,
	@StateId 
)
END  

--PR_MST_City_Update
create procedure PR_MST_City_Update
	@CityId		 int,     
	@CityName	 varchar(250),   
	@Pincode	 varchar(6), 
	@StateId	 int,   
	@CityRemarks varchar(500)
AS
BEGIN
update MST_City set
	CityId		=	 @CityId,
	CityName = @cityName,
	Pincode = @Pincode,
	StateId = @StateId,
	CityRemarks = @CityRemarks
where cityId = @CityId
end

--PR_MST_city_delete
Create Procedure PR_MST_city_delete

     @CityID int
As
Begin
      Delete From MST_City 
	  Where CityID= @CityID
End

--PR_MST_city_SelectByPK 
Create Procedure PR_MST_city_SelectByPK
     @CityID int
As
Begin
select * From MST_City 
Where CityID= @CityID
End

--PR_MST_city_SelectByPincodeStartWith360
create Procedure PR_MST_city_SelectByPincodeStartWith360
     @Pincode  varchar(6)
As
Begin
select *from MST_City
where pincode like '360%'
End

--PR_MST_City_CityBYCityNamePincode

Create Proc PR_MST_City_SelectByCityNamePincode
@pincode varchar (6),
@CityName varchar (250)

As
Begin
Select * from MST_City
Where	pincode= @pincode  and cityName = @CityName
end

--PR_MST_City_SelectByCityRemarks
Create Proc PR_MST_City_SelectByCityRemarks

@cityRemarks varchar(500)

As
Begin
Select * from MST_City
Where	@cityRemarks = cityRemarks 
End


--PR_MST_City_SelectByStateID
Create Proc PR_MST_City_SelectByStateID

@StateId int
As
Begin
     Select * from MST_City
		Where	@StateId = StateId 
End


--PR_MST_City_SelectByStateIDCityId
Create Proc PR_MST_City_SelectByStateIDCityId

@StateId int,
@CityId  int
As
Begin
     Select * from MST_City
	Where	
		@StateId = StateId and
		@CityId = CityId
End

