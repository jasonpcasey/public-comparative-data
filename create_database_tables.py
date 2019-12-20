# coding=utf-8

from base import Session, engine, Base
from date_dimension import DateRow
from states import State
from peer_groups import PeerGroup
from ipeds_demographic_dimension import IpedsDemographicDimension
from ipeds_employee_dimension import IpedsEmployeeDimension
from ipeds_degree_types import IpedsDegreeType
from counties import County
from ipeds_fall_enrollment import IpedsFallEnrollment
from ipeds_institutions import IpedsInstitution
from nsf_herd_academic_fields import NsfHerdAcademicField
from nsf_herd_federal_agencies import NsfHerdFederalAgency
from nsf_herd_institution_data import NsfHerdInstitution
from nsf_herd_detail_data import NsfHerdDetail
from aau_membership import AauMember
from athletic_conferences import AthleticConference
from carnegie_classes import CarnegieClass
from cbsa import Cbsa
from csa import Csa
from cip_hierarchy import Cip
from ipeds_custom_peer_lists import IpedsCustomPeerList
from ipeds_admissions import IpedsAdmissions
from ipeds_average_tuition import IpedsAverageTuition
from ipeds_charges import IpedsCharge
from ipeds_degree_completions import IpedsDegreeCompletion
from ipeds_fall_enrollment_by_age import IpedsFallEnrollmentByAge
from ipeds_fall_enrollment_by_residency import IpedsFallEnrollmentByResidency
from ipeds_fall_staff import IpedsFallStaff
from ipeds_full_year_enrollment import IpedsFullYearEnrollment
from ipeds_grad_rates import IpedsGraduationRate
from ipeds_pell_grad_rates import IpedsPellGradRate
from ipeds_retention import IpedsRetention
from ipeds_student_aid import IpedsStudentAid
from ipeds_student_aid_by_income import IpedsStudentAidByIncome
from ipeds_test_scores import IpedsTestScore
from ipeds_athletic_conference_memberships import IpedsAthleticConferenceMembership

import numpy as np
import pandas as pd
from pandas import DataFrame
from sqlalchemy import sql

table_names = [IpedsFallEnrollment.__tablename__,
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
               Cip.__tablename__]

tables = [IpedsFallEnrollment.__table__,
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
          Cbsa.__table__,
          Csa.__table__,
          DateRow.__table__,
          County.__table__,
          State.__table__,
          IpedsDemographicDimension.__table__,
          IpedsEmployeeDimension.__table__,
          IpedsDegreeType.__table__,
          Cip.__table__]

print("\nDropping tables if they exist in the database:\n\t{}".format('\n\t'.join(table_names)))

Base.metadata.drop_all(bind = engine,
                       checkfirst = True,
                       tables = tables)

print("\nCreating tables in the database:\n\t{}".format('\n\t'.join(table_names)))

Base.metadata.create_all(engine)

print("\nAll Done.")