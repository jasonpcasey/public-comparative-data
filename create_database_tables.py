# coding=utf-8

from database.base import Session, engine, Base
from database.date_dimension import DateRow
from database.states import State
from database.ipeds_survey_dimension import IpedsSurveyDimension
from database.ipeds_submission_status import IpedsSubmissionStatus
from database.peer_groups import PeerGroup
from database.ipeds_demographic_dimension import IpedsDemographicDimension
from database.ipeds_employee_dimension import IpedsEmployeeDimension
from database.ipeds_degree_types import IpedsDegreeType
from database.counties import County
from database.ipeds_fall_enrollment import IpedsFallEnrollment
from database.ipeds_institutions import IpedsInstitution
from database.nsf_herd_academic_fields import NsfHerdAcademicField
from database.nsf_herd_federal_agencies import NsfHerdFederalAgency
from database.nsf_herd_institution_data import NsfHerdInstitution
from database.nsf_herd_detail_data import NsfHerdDetail
from database.aau_membership import AauMember
from database.athletic_conferences import AthleticConference
from database.carnegie_classes import CarnegieClass
from database.cbsa import Cbsa
from database.csa import Csa
from database.cip_hierarchy import Cip
from database.cip_history import CipCode
from database.ipeds_custom_peer_lists import IpedsCustomPeerList
from database.ipeds_admissions import IpedsAdmissions
from database.ipeds_average_tuition import IpedsAverageTuition
from database.ipeds_charges import IpedsCharge
from database.ipeds_degree_completions import IpedsDegreeCompletion
from database.ipeds_fall_enrollment_by_age import IpedsFallEnrollmentByAge
from database.ipeds_fall_enrollment_by_residency import IpedsFallEnrollmentByResidency
from database.ipeds_fall_staff import IpedsFallStaff
from database.ipeds_full_year_enrollment import IpedsFullYearEnrollment
from database.ipeds_grad_rates import IpedsGraduationRate
from database.ipeds_pell_grad_rates import IpedsPellGradRate
from database.ipeds_retention import IpedsRetention
from database.ipeds_student_aid import IpedsStudentAid
from database.ipeds_student_aid_by_income import IpedsStudentAidByIncome
from database.ipeds_test_scores import IpedsTestScore
from database.ipeds_athletic_conference_memberships import IpedsAthleticConferenceMembership
from database.ipeds_faculty_dimension import IpedsFacultyDimension
from database.ipeds_finance_field_dimension import IpedsFinanceFieldDimension
from database.ipeds_finance import IpedsFinance
from database.ipeds_new_hires import IpedsNewHire
from database.gdp import Gdp

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

table_names = [
    Gdp.__tablename__,
    IpedsNewHire.__tablename__,
    IpedsFinance.__tablename__,
    IpedsFinanceFieldDimension.__tablename__,
    IpedsFallEnrollment.__tablename__,
    IpedsAdmissions.__tablename__,
    IpedsAverageTuition.__tablename__,
    IpedsCharge.__tablename__,
    IpedsDegreeCompletion.__tablename__,
    IpedsFallEnrollmentByAge.__tablename__,
    IpedsFallEnrollmentByResidency.__tablename__,
    IpedsFallStaff.__tablename__,
    IpedsFullYearEnrollment.__tablename__,
    IpedsGraduationRate.__tablename__,
    IpedsPellGradRate.__tablename__,
    IpedsRetention.__tablename__,
    IpedsStudentAidByIncome.__tablename__,
    IpedsStudentAid.__tablename__,
    IpedsTestScore.__tablename__,
    IpedsInstitution.__tablename__,
    IpedsAthleticConferenceMembership.__tablename__,
    NsfHerdDetail.__tablename__,
    NsfHerdInstitution.__tablename__,
    NsfHerdAcademicField.__tablename__,
    NsfHerdFederalAgency.__tablename__,
    DateRow.__tablename__,
    County.__tablename__,
    State.__tablename__,
    AauMember.__tablename__,
    AthleticConference.__tablename__,
    CarnegieClass.__tablename__,
    IpedsCustomPeerList.__tablename__,
    Cbsa.__tablename__,
    Csa.__tablename__,
    IpedsDemographicDimension.__tablename__,
    IpedsEmployeeDimension.__tablename__,
    PeerGroup.__tablename__,
    IpedsDegreeType.__tablename__,
    Cip.__tablename__,
    CipCode.__tablename__,
    IpedsFacultyDimension.__tablename__,
    IpedsSurveyDimension.__tablename__,
    IpedsSubmissionStatus.__tablename__,
    ]

tables = [
    Gdp.__table__,
    IpedsFallEnrollment.__table__,
    IpedsFinance.__table__,
    IpedsNewHire.__table__,
    IpedsFinanceFieldDimension.__table__,
    PeerGroup.__table__,
    IpedsInstitution.__table__,
    IpedsAthleticConferenceMembership.__table__,
    NsfHerdDetail.__table__,
    NsfHerdInstitution.__table__,
    IpedsAdmissions.__table__,
    IpedsAverageTuition.__table__,
    IpedsCharge.__table__,
    IpedsDegreeCompletion.__table__,
    IpedsFallEnrollmentByAge.__table__,
    IpedsFallEnrollmentByResidency.__table__,
    IpedsFallStaff.__table__,
    IpedsFullYearEnrollment.__table__,
    IpedsGraduationRate.__table__,
    IpedsPellGradRate.__table__,
    IpedsRetention.__table__,
    IpedsStudentAidByIncome.__table__,
    IpedsStudentAid.__table__,
    IpedsTestScore.__table__,
    NsfHerdAcademicField.__table__,
    NsfHerdFederalAgency.__table__,
    AauMember.__table__,
    AthleticConference.__table__,
    CarnegieClass.__table__,
    IpedsCustomPeerList.__table__,
    IpedsFacultyDimension.__table__,
    Cbsa.__table__,
    Csa.__table__,
    DateRow.__table__,
    County.__table__,
    State.__table__,
    IpedsDemographicDimension.__table__,
    IpedsEmployeeDimension.__table__,
    IpedsDegreeType.__table__,
    Cip.__table__,
    CipCode.__table__,
    IpedsSubmissionStatus.__table__,
    IpedsSurveyDimension.__table__
    ]

names = '\n\t'.join(table_names)

print(f"Dropping tables if they exist in the database:\n\t{names}")

Base.metadata.drop_all(bind = engine,
                       checkfirst = True,
                       tables = tables)

print(f"Creating tables in the database:\n\t{names}")

Base.metadata.create_all(engine)

print("All Done.")