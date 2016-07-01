
set identity_insert [Aoc].[dbo].[AgreementTemplate]  on
go
insert into  [Aoc].[dbo].[AgreementTemplate]
      ([Id]
      ,[agreementType]
      ,[shopGradeId]
      ,[approveFlow]
      ,[Content]
      ,[status]
      ,[type]
      ,[TenantId])
      
SELECT TOP 1000 [agreementTemplateId] as id
      ,[agreementType]
      ,[shopGradId]
      ,[approveFlow]
      ,[templateContent] as content
      --,[bookMarks]
      --,[yearOfDate]
      --,[isValidate]
      --,[expiredTime]
      ,1 as [status]
      ,[type],1 as tenantid
  FROM [AOC_integral].[dbo].[tb_ShopAgreementTemplate]
  where yearOfDate = 2016 and shopGradId in (1,2,
3,
5,
6,
7)