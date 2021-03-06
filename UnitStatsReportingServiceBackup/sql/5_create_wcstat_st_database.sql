-- setting the database
USE [NCCI_WCSTAT_STAGING]

-----------------------Transmission Data----------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is __-----------------------------------
CREATE TABLE [WCSTAT].[TRANSMISSION](
	[ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[Label] [varchar](255) NULL,
	[ADDRESS_OF_CONTACT_CITY] [varchar](255) NULL,
	[ADDRESS_OF_CONTACT_STATE] [varchar](255) NULL,
	[ADDRESS_OF_CONTACT_STREET] [varchar](255) NULL,
	[ADDRESS_OF_CONTACT_ZIP_CODE] [varchar](255) NULL,
	[RECORD_TYPE_CODE ] [varchar](2) NULL,
	[DATA_PROVIDER_CODE] [varchar](255) NULL,
	[DATA_PROVIDER_CONTACT_EMAIL__0] [varchar](255) NULL,
	[DATA_PROVIDER_TYPE_CODE] [varchar](255) NULL,
	[DATA_RECEIVER_CODE] [varchar](255) NULL,
	[DATA_TYPE_CODE] [varchar](255) NULL,
	[ELECTRONIC_OR_PAPER_RECEIPT__0] [varchar](255) NULL,
	[FAX_NUMBER] [varchar](255) NULL,
	[NAME_OF_DATA_PROVIDER_CONTACT] [varchar](255) NULL,
	[PHONE_NUMBER] [varchar](255) NULL,
	[PHONE_NUMBER_EXTENSION] [varchar](255) NULL,
	[PROCESSED_DATE_ITEM] [datetime] NULL,
	[SUBMISSION_REPLACEMENT_IDENT_0] [varchar](255) NULL,
	[SUBMISSION_TYPE_CODE] [varchar](255) NULL,
	[THIRD_PARTY_ENTITY_FEDERAL_E_0] [varchar](255) NULL,
	[TRANSMISSION_VERSION_IDENTIF_0] [varchar](255) NULL,
	[SHOW_ON_UI] [BIT] DEFAULT 0 NOT NULL,
	[RESERVED_1] [varchar](18) NULL,
	[RESERVED_2] [varchar](18) NULL,
	[RESERVED_3] [varchar](18) NULL,
	/*[VERSION_NUMBER_OF_DAY] [int]  NOT NULL,*/
	[CREATE_TIME] [datetime] NULL DEFAULT GETDATE(),
	[UPDATE_TIME][datetime] NULL DEFAULT GETDATE(),
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));
CREATE TRIGGER transmission_updateTime ON [WCSTAT].[TRANSMISSION]
AFTER UPDATE AS UPDATE [WCSTAT].[TRANSMISSION]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);



-------------------------------Link Data----------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 0-----------------------------------
CREATE TABLE [WCSTAT].[LINK_DATA](
[ID][numeric](19, 0) NOT NULL,
[CLAIM_NUMBER] [varchar](255) NULL,
[CARRIER_CODE] [varchar](5) NOT NULL,
[RESERVED_1] [varchar](18) NULL,
[POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
[SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
[EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
[POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
[REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
[CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
[CREATE_TIME] [datetime] NULL DEFAULT GETDATE(),
[UPDATE_TIME][datetime] NULL DEFAULT GETDATE(),
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER linkdata_updateTime ON [WCSTAT].[LINK_DATA]
AFTER UPDATE AS UPDATE [WCSTAT].[LINK_DATA]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);

-------------------------------Header Data--------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 1-----------------------------------

-----------------------------Header Data----------------------------------------
---------Link Data is the common elements along with linkID as FK---------------
---------------------------Record Number is 1-----------------------------------
CREATE TABLE [WCSTAT].[HEADER](

    [ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
	[BASIS_OF_DEDUCTIBLE_CALCULAT_0] [int] NULL,
	[BEEP_EDIT_BYPASS_CODE] [varchar](255) NULL,
	[BUSINESS_SEGMENT_IDENTIFIER] [int] NULL,
	[CANCELLED_MID_TERM_POLICY_IN_0] [varchar](255) NULL,
	[CERTIFIED_HEALTH_CARE_NETWOR_0] [varchar](255) NULL,
	[CLAIM_COUNT_TOTAL] [int] NULL,
	[CLAIMANTS_ATTORNEY_FEES_INCU_0] [numeric](19, 0) NULL,
	[CORRECTION_TYPE_CODE] [varchar](255) NULL,
	[DCO_GENERATED_TRANSACTION_CO_0] [int] NULL,
	[DEDUCTIBLE_AMOUNT_AGGREGATE] [numeric](19, 0) NULL,
	[DEDUCTIBLE_AMOUNT_PER_CLAIM__0] [numeric](19, 0) NULL,
	[DEDUCTIBLE_PERCENTAGE] [int] NULL,
	[EMPLOYEE_LEASING_CODE] [varchar](255) NULL,
	[EMPLOYERS_ATTORNEY_FEES_INCU_0] [numeric](19, 0) NULL,
	[ESTIMATED_AUDIT_CODE] [varchar](255) NULL,
	[EXPOSURE_PAYROLL_TOTAL] [numeric](19, 0) NULL,
	[FEDERAL_EMPLOYER_IDENTIFICAT_0] [varchar](255) NULL,
	[INCURRED_ALLOCATED_LOSS_ADJU_0] [numeric](19, 0) NULL,
	[INCURRED_INDEMNITY_AMOUNT_TO_0] [numeric](19, 0) NULL,
	[INCURRED_MEDICAL_AMOUNT_TOTAL] [numeric](19, 0) NULL,
	[INTERSTATE_RATED_POLICY_INDI_0] [varchar](255) NULL,
	[LOSSES_SUBJECT_TO_DEDUCTIBLE_0] [int] NULL,
	[MANAGED_CARE_ORGANIZATION_PO_0] [varchar](255) NULL,
	[MULTISTATE_POLICY_INDICATOR] [varchar](255) NULL,
	[ORIGINAL_ADMINISTRATION_NUMB_0] [varchar](255) NULL,
	[PAID_ALLOCATED_LOSS_ADJUSTME_0] [numeric](19, 0) NULL,
	[PAID_INDEMNITY_AMOUNT_TOTAL] [numeric](19, 0) NULL,
	[PAID_MEDICAL_AMOUNT_TOTAL] [numeric](19, 0) NULL,
	[POLICY_EXPIRATION_OR_CANCELL_0] [datetime] NULL,
	[PREVIOUS_CARRIER_CODE] [varchar](255) NULL,
	[PREVIOUS_CORRECTION_SEQUENCE_0] [varchar](255) NULL,
	[PREVIOUS_EXPOSURE_STATE_CODE] [int] NULL,
	[PREVIOUS_POLICY_EFFECTIVE_DA_0] [datetime] NULL,
	[PREVIOUS_POLICY_NUMBER_IDENT_0] [varchar](255) NULL,
	[PREVIOUS_REPORT_LEVEL_CODE_R_0] [int] NULL,
	[PREVIOUS_SEPARATED_SEGMENT_N_0] [varchar](255) NULL,
	[REPLACEMENT_REPORT_CODE] [varchar](255) NULL,
	[RETROSPECTIVE_RATED_POLICY_I_0] [varchar](255) NULL,
	[RISK_ID_NUMBER] [varchar](255) NULL,
	[SEPARATED_DATE_ITEM] [datetime] NULL,
	[STANDARD_PREMIUM_TOTAL] [numeric](19, 0) NULL,
	[STATE_EFFECTIVE_DATE_ITEM] [datetime] NULL,
	[SUBJECT_PREMIUM_TOTAL] [numeric](19, 0) NULL,
	[THIRD_PARTY_ENTITY_FEDERAL_E_0] [varchar](255) NULL,
	[THREE_YEAR_FIXED_RATE_POLICY_0] [varchar](255) NULL,
	[TYPE_OF_COVERAGE_ID_CODE] [int] NULL,
	[TYPE_OF_NON_STANDARD_ID_CODE] [int] NULL,
	[TYPE_OF_PLAN_ID_CODE] [int] NULL,
	[UNIT_FORMAT_SUBMISSION_CODE] [varchar](255) NULL,
	[ADDRESS_WCSTAT_ID] [numeric](19, 0) NULL,
	[EXPOSURES_WCSTAT_ID] [numeric](19, 0) NULL,
	[INSURED_WCSTAT_ID] [numeric](19, 0) NULL,
	[LOSSES_WCSTAT_ID] [numeric](19, 0) NULL,
	[NAME__WCSTAT_ID] [numeric](19, 0) NULL,
	[WCSTAT_WCSTATS_ID] [numeric](19, 0) NULL,
	[RESERVED_1] [varchar](18) NULL,
    [RESERVED_2] [varchar](18) NULL,
    [RESERVED_3] [varchar](18) NULL,
    [RESERVED_4] [varchar](18) NULL,
    [RESERVED_5] [varchar](18) NULL,
    [RESERVED_6] [varchar](18) NULL,
    [RESERVED_7] [varchar](18) NULL,
    [RESERVED_8] [varchar](18) NULL,
    [RESERVED_9] [varchar](18) NULL,
    [RESERVED_FOR_INSURER_USE] [varchar](18) NULL,
    [RESERVED_FOR_DCO_USE] [varchar](18) NULL,
	[LINKID] [numeric](19, 0) NOT NULL,
	[RECORD_TYPE_CODE ] [varchar](2) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
	PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER header_updateTime ON [WCSTAT].[HEADER]
AFTER UPDATE AS UPDATE [WCSTAT].[HEADER]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);

-------------------------------Name Data----------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 1-----------------------------------

CREATE TABLE [WCSTAT].[NAME](
	[ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
    [POLICY_EXPIRATION_OR_CANCELL_0] [datetime] NULL,
	[NAME_REFERENCE] [varchar](255) NULL,
	[NAME_OF_INSURED] [varchar](255) NULL,
	[ORGANIZATION_NAME] [varchar](255) NULL,
	[SEPARATED_NAME_OF_INSURED] [varchar](255) NULL,
	[RESERVED_1] [varchar](18) NULL,
    [RESERVED_2] [varchar](18) NULL,
   [RECORD_TYPE_CODE ] [varchar](2) NULL,
	[LINKID] [numeric](19, 0) NOT NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER name_updateTime ON [WCSTAT].[NAME]
AFTER UPDATE AS UPDATE [WCSTAT].[NAME]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Address Data-------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 2-----------------------------------

CREATE TABLE [WCSTAT].[ADDRESS](
	[ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
	[ADDRESS] [varchar](79) NULL,
	[ADDRESS_REFERENCE] [varchar](255) NULL,
	[CITY] [varchar](30) NULL,
	[STATE_] [varchar](2) NULL,
	[STREET_1] [varchar](60) NULL,
	[ZIP_CODE] [varchar](9) NULL,
	[RECORD_TYPE_CODE ] [varchar](2) NULL,
	[LINKID] [numeric](19, 0)  NOT NULL,
	[RESERVED_1] [varchar](18) NULL,
    [RESERVED_2] [varchar](18) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER address_updateTime ON [WCSTAT].[ADDRESS]
AFTER UPDATE AS UPDATE [WCSTAT].[ADDRESS]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Insured Data-------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is NA----------------------------------

CREATE TABLE [WCSTAT].[INSURED](
	[ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
    [POLICY_EXPIRATION_OR_CANCELL_0] [datetime] NULL,
	[ADDRESS_REFERENCE_OBJECT] [varchar](255) NULL,
	[NAME_REFERENCE_OBJECT] [varchar](255) NULL,
	[LINKID] [numeric](19, 0)  NOT NULL,
	[RECORD_TYPE_CODE ] [varchar](2) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER insured_updateTime ON [WCSTAT].[INSURED]
AFTER UPDATE AS UPDATE [WCSTAT].[INSURED]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);

-------------------------------Exposure Data-------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 04----------------------------------

CREATE TABLE [WCSTAT].[EXPOSURE](
  [ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
  [CLAIM_NUMBER] [varchar](255) NULL,
  [CARRIER_CODE] [varchar](5) NOT NULL,
  [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
  [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
  [RESERVED_1] [varchar](18) NULL,
  [RESERVED_2] [varchar](18) NULL,
  [RESERVED_3] [varchar](18) NULL,
  [RESERVED_4] [varchar](18) NULL,
  [RESERVED_5] [varchar](18) NULL,
  [RESERVED_6] [varchar](18) NULL,
  [RESERVED_7] [varchar](18) NULL,
  [RECORD_TYPE_CODE ] [varchar](2) NULL,
  [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
  [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
  [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
  [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
  [CLASSIFICATION_CODE] [varchar](255) NULL,
  [EXPERIENCE_MODIFICATION_EFFE_0] [datetime] NULL,
  [EXPERIENCE_MODIFICATION_FACT_0] [numeric](20, 10) NULL,
  [EXPOSURE_ACT_EXPOSURE_COVERA_0] [int] NULL,
  [EXPOSURE_AMOUNT] [numeric](20, 10) NULL,
  [MANUAL_CHARGED_RATE] [numeric](20, 10) NULL,
  [PREMIUM_AMOUNT] [numeric](19, 0) NULL,
  [RATE_EFFECTIVE_DATE_ITEM] [datetime] NULL,
  [RATING_TIER_ID_CODE] [int] NULL,
  [SPLIT_PERIOD_CODE] [int] NULL,
  [UPDATE_TYPE_CODE] [varchar](255) NULL,
  [EXPOSURE_EXPOSURES_ID] [numeric](19, 0) NULL,
  [LINKID] [numeric](19, 0) NOT NULL,
  [CREATE_TIME] [datetime] NULL,
  [UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER exposure_updateTime ON [WCSTAT].[EXPOSURE]
AFTER UPDATE AS UPDATE [WCSTAT].[EXPOSURE]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Loss Data----------------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 05----------------------------------
CREATE TABLE [WCSTAT].[LOSS](
    [ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
    [CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [RESERVED_1] [varchar](18) NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
    [RECORD_TYPE_CODE ] [varchar](2) NULL,
    [RESERVED_2] [varchar](18) NULL,
    [RESERVED_3] [varchar](18) NULL,
    [RESERVED_4] [varchar](18) NULL,
    [RESERVED_5] [varchar](18) NULL,
    [RESERVED_6] [varchar](18) NULL,
    [RESERVED_7] [varchar](18) NULL,
    [ACCIDENT_DATE_ITEM] [datetime] NULL,
    [CAUSE_OF_INJURY_CODE] [int] NULL,
    [CLAIM_STATUS_CODE] [int] NULL,
	[CLASSIFICATION_CODE] [varchar](10) NULL,
	[FRAUDULENT_CLAIM_CODE] [varchar](2) NULL,
	[INCURRED_INDEMNITY_AMOUNT] [decimal](20, 2) NULL,
	[INCURRED_MEDICAL_AMOUNT] [decimal](20, 2) NULL,
	[INJURY_CODE] [varchar](2) NULL,
	[JURISDICTION_STATE_CODE] [varchar](50) NULL,
	[LOSS_COVERAGE_ACT_CODE] [varchar](2) NULL,
	[NATURE_OF_INJURY_CODE] [varchar](2) NULL,
	[OCCUPATION_DESCRIPTION] [varchar](80) NULL,
	[PAID_ALLOCATED_LOSS_ADJUSTME_1] [decimal](7, 2) NULL,
	[PAID_INDEMNITY_AMOUNT] [decimal](18, 2) NULL,
	[PAID_MEDICAL_AMOUNT] [decimal](18, 2) NULL,
	[PART_OF_BODY_CODE] [varchar](2) NULL,
	[SCHEDULED_INDEMNITY_PERCENTA_0] [varchar](3) NULL,
	[TOTAL_GROSS_INCURRED_AMOUNT] [decimal](7, 2) NULL,
	[TOTAL_INCURRED_VOCATIONAL_RE_0] [decimal](7, 2) NULL,
	[TYPE_OF_CLAIM_CODE] [varchar](2) NULL,
	[TYPE_OF_LOSS_CODE] [varchar](2) NULL,
	[TYPE_OF_RECOVERY_CODE] [varchar](2) NULL,
	[TYPE_OF_SETTLEMENT_CODE] [varchar](2) NULL,
	[UPDATE_TYPE_CODE] [varchar](1) NULL,
	[VOCATIONAL_REHABILITATION_EV_0] [varchar](1) NULL,
	[WEEKLY_WAGE_AMOUNT] [decimal](18, 2) NULL,
	[LINKID] [numeric](19, 0) NOT NULL,
	[POLICY_EXPIRATION_OR_CANCELL_0] [datetime] NULL,
	[ANNUITY_PURCHASE_AMOUNT] [numeric](19, 0) NULL,
	[ATTORNEY_OR_AUTHORIZED_REPRE_0] [int] NULL,
	[BIRTH_DATE_ITEM] [datetime] NULL,
	[CASE_NUMBER_ASSIGNED_BY_STATE] [varchar](255) NULL,
	[CATASTROPHE_NUMBER] [int] NULL,
	[CLAIM_COUNT] [int] NULL,
	[CLAIMANTS_ATTORNEY_FEES_INCU_1] [numeric](19, 0) NULL,
	[DATA_PROVIDER_COMMENTS] [varchar](255) NULL,
	[DATE_OF_RECOVERY_ITEM] [datetime] NULL,
	[DECEASED_DATE_ITEM] [datetime] NULL,
	[DEDUCTIBLE_REIMBURSEMENT_AMO_0] [numeric](19, 0) NULL,
	[EMPLOYERS_ATTORNEY_FEES_INCU_1] [numeric](19, 0) NULL,
	[EMPLOYERS_LIABILITY_OR_OTHER_0] [numeric](19, 0) NULL,
	[EMPLOYMENT_STATUS_CODE] [int] NULL,
	[FUNERAL_ALLOWANCE_AMOUNT] [numeric](19, 0) NULL,
	[HIRE_DATE_ITEM] [datetime] NULL,
	[INCURRED_ALLOCATED_LOSS_ADJU_1] [numeric](19, 0) NULL,
	[INCURRED_COST_OF_TEMPORARY_I_0] [numeric](19, 0) NULL,
	[LUMP_SUM_INDICATOR] [varchar](255) NULL,
	[LUMP_SUM_REMARRIAGE_PAYMENT__0] [numeric](19, 0) NULL,
	[MANAGED_CARE_ORGANIZATION_TY_0] [int] NULL,
	[NONSCHEDULED_INDEMNITY_INCUR_0] [numeric](19, 0) NULL,
	[NONSCHEDULED_INDEMNITY_PERCE_0] [int] NULL,
	[NUMBER_OF_WEEKS_FOR_TEMPORAR_0] [int] NULL,
	[PAID_APPLICANTS_MEDICAL_EVAL_0] [numeric](19, 0) NULL,
	[PAID_DEATH_BENEFITS_TO_VALUA_0] [numeric](19, 0) NULL,
	[PAID_DEFENSE_MEDICAL_EVALUAT_0] [numeric](19, 0) NULL,
	[PAID_HOSPITAL_COSTS_TO_VALUA_0] [numeric](19, 0) NULL,
	[PAID_INDEPENDENT_AGREED_MEDI_0] [numeric](19, 0) NULL,
	[PAID_PERMANENT_PARTIAL_BENEF_0] [numeric](19, 0) NULL,
	[PAID_PERMANENT_TOTAL_BENEFIT_0] [numeric](19, 0) NULL,
	[PAID_PHYSICIANS_COSTS_TO_VAL_0] [numeric](19, 0) NULL,
	[PAID_SINGLE_SUM_SETTLEMENT_A_0] [numeric](19, 0) NULL,
	[PAID_TEMPORARY_DISABILITY_BE_0] [numeric](19, 0) NULL,
	[PAID_VOCATIONAL_REHABILITATI_0] [numeric](19, 0) NULL,
	[PENSION_INDEMNITY_AMOUNT_PRE_0] [numeric](19, 0) NULL,
	[PENSION_INDEMNITY_BENEFITS_P_0] [numeric](19, 0) NULL,
	[PRESENT_VALUE_OF_FUTURE_INDE_0] [numeric](19, 0) NULL,
	[REPORTED_DATE_ITEM] [datetime] NULL,
	[SINGLE_SUM_PAID_DATE_ITEM] [datetime] NULL,
	[SOCIAL_SECURITY_OFFSET_AMOUNT] [numeric](19, 0) NULL,
	[SOCIAL_SECURITY_OFFSET_INDIC_0] [varchar](255) NULL,
	[SURGERY_CODE] [int] NULL,
	[TRANSACTION_TYPE_CODE] [int] NULL,
	[VOCATIONAL_REHABILITATION_IN_0] [varchar](255) NULL,
	[VOCATIONAL_REHABILITATION_TR_0] [numeric](19, 0) NULL,
	[WORKERS_LAST_NAME] [varchar](255) NULL,
	[WORKERS_SEX_CODE] [varchar](255) NULL,
	[YEAR_LAST_EXPOSED_ITEM] [datetime] NULL,
	[BENEFICIARIES_LOSS_ID] [numeric](19, 0) NULL,
	[SCHEDULED_INDEMNITIES_LOSS_H_0] [numeric](19, 0) NULL,
	[LOSS_LOSSES_ID] [numeric](19, 0) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));


CREATE TRIGGER loss_updateTime ON [WCSTAT].[LOSS]
AFTER UPDATE AS UPDATE [WCSTAT].[LOSS]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Unit Total Data----------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 05----------------------------------

CREATE TABLE [WCSTAT].[UNIT_TOTAL](
    [ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
    [CLAIM_NUMBER] [varchar](255) NULL,
    [CARRIER_CODE] [varchar](5) NOT NULL,
    [POLICY_NUMBER_IDENTIFIER] [varchar](18) NOT NULL,
    [SEPARATED_SEGMENT_NUMBER] [varchar](3) NOT NULL,
    [RESERVED_1] [varchar](255) NULL,
    [EXPOSURE_STATE_CODE] [varchar](2) NOT NULL,
    [POLICY_EFFECTIVE_DATE_ITEM] [datetime] NULL,
    [REPORT_LEVEL_CODE_REPORT_NUM_0] [varchar](1) NOT NULL,
    [CORRECTION_SEQUENCE_NUMBER_C_0] [varchar](1) NOT NULL,
    [RECORD_TYPE_CODE ] [varchar](2) NULL,
	[EXPOSURE_PAYROLL_TOTAL] [numeric](19, 0) NULL,
	[RESERVED_2] [varchar](255) NULL,
	[SUBJECT_PREMIUM_TOTAL] [numeric](19, 0) NULL,
	[STANDARD_PREMIUM_TOTAL] [numeric](19, 0) NULL,
	[CLAIM_COUNT_TOTAL] [numeric](19, 0) NULL,
	[INCURRED_INDEMNITY_AMOUNT_TO_0] [numeric](19, 0) NULL,
	[INCURRED_MEDICAL_AMOUNT_TOTAL] [numeric](19, 0) NULL,
	[RECORDS_IN_UNIT_REPORT_TOTAL] [numeric](19, 0) NULL,
	[RESERVED_3][varchar](255) NULL,
	[PAID_INDEMNITY_AMOUNT_TOTAL][numeric](19, 0) NULL,
	[PAID_MEDICAL_AMOUNT_TOTAL][numeric](19, 0) NULL,
	[CLAIMANTS_ATTORNEY_FEES_INCU_1][numeric](19, 0) NULL,
	[EMPLOYERS_ATTORNEY_FEES_INCU_1][numeric](19, 0) NULL,
	[PAID_ALLOCATED_LOSS_ADJUSTME_1][numeric](19, 0) NULL,
	[INCURRED_ALLOCATED_LOSS_ADJU_1][numeric](19, 0) NULL,
	[LINKID] [numeric](19, 0) NOT NULL,
	[RESERVED_4] [varchar](255) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));

CREATE TRIGGER unittotal_updateTime ON [WCSTAT].[UNIT_TOTAL]
AFTER UPDATE AS UPDATE [WCSTAT].[UNIT_TOTAL]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Unit Total Data----------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 05----------------------------------
CREATE TABLE [WCSTAT].[FILE_CONTROL](
	[ID] [numeric](19, 0) IDENTITY(1,1) NOT NULL,
	[Filler] [varchar](255) NULL,
	[RECORD_TYPE_CODE ] [varchar](2) NULL,
	[DETAIL_RECORD_COUNT_TOTAL] [int] NULL,
	[PRIMARY_EFFECTIVE_MONTH_ITEM] [datetime] NULL,
	[PRIMARY_EFFECTIVE_YEAR_ITEM] [datetime] NULL,
	[UNIT_REPORTS_SUBMITTED_TOTAL] [int] NULL,
	[UNIT_SUBMISSION_CODE] [varchar](255) NULL,
	[ICR_TOTAL] [int] NULL,
	[RESERVED_1] [varchar](255) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_TIME][datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
));
CREATE TRIGGER filecontrol_updateTime ON [WCSTAT].[FILE_CONTROL]
AFTER UPDATE AS UPDATE [WCSTAT].[FILE_CONTROL]
SET UPDATE_TIME = GETDATE()
WHERE ID IN (SELECT DISTINCT ID FROM Inserted);


-------------------------------Contraints----------------------------------
---------This database is the unique contraints for each of the unit.-----------
---------------------------Record Number is 05----------------------------------

ALTER TABLE [WCSTAT].[HEADER]  WITH CHECK ADD  CONSTRAINT [FK984CC320560C62DA] FOREIGN KEY([ADDRESS_WCSTAT_ID])
REFERENCES [WCSTAT].[ADDRESS] ([ID]);
ALTER TABLE [WCSTAT].[HEADER] CHECK CONSTRAINT [FK984CC320560C62DA];
ALTER TABLE [WCSTAT].[HEADER]  WITH CHECK ADD  CONSTRAINT [FK984CC3207705692E] FOREIGN KEY([WCSTAT_WCSTATS_ID])
REFERENCES [WCSTAT].[HEADER] ([ID]);
ALTER TABLE [WCSTAT].[HEADER] CHECK CONSTRAINT [FK984CC3207705692E];
ALTER TABLE [WCSTAT].[HEADER]  WITH CHECK ADD  CONSTRAINT [FK984CC3209B40AE27] FOREIGN KEY([NAME__WCSTAT_ID])
REFERENCES [WCSTAT].[NAME] ([ID]);
ALTER TABLE [WCSTAT].[HEADER] CHECK CONSTRAINT [FK984CC3209B40AE27];
ALTER TABLE [WCSTAT].[HEADER]  WITH CHECK ADD  CONSTRAINT [FK984CC320C52381EB] FOREIGN KEY([INSURED_WCSTAT_ID])
REFERENCES [WCSTAT].[INSURED] ([ID]);
ALTER TABLE [WCSTAT].[HEADER] CHECK CONSTRAINT [FK984CC320C52381EB];
ALTER TABLE [WCSTAT].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_LINUNIT_TOTALK_ADDRESS] FOREIGN KEY([LINKID])
REFERENCES [WCSTAT].[LINK_DATA] ([ID]);
ALTER TABLE [WCSTAT].[LOSS]  WITH CHECK ADD  CONSTRAINT [FK_LINK_LOSS] FOREIGN KEY([LINKID])
REFERENCES [WCSTAT].[LINK_DATA] ([ID]);
ALTER TABLE [WCSTAT].[NAME]  WITH CHECK ADD  CONSTRAINT [FK_LINK_NAME] FOREIGN KEY([LINKID])
REFERENCES [WCSTAT].[LINK_DATA] ([ID]);
ALTER TABLE [WCSTAT].[EXPOSURE]  WITH CHECK ADD  CONSTRAINT [FK_LINK_EXPOSURE] FOREIGN KEY([LINKID])
REFERENCES [WCSTAT].[LINK_DATA] ([ID]);
ALTER TABLE [WCSTAT].[LOSS]  WITH CHECK ADD  CONSTRAINT [FK_UNIT_TOTAL] FOREIGN KEY([LINKID])
REFERENCES [WCSTAT].[LINK_DATA] ([ID]);
