# coding=utf-8

from sqlalchemy import Column, String, Integer, Boolean, Date

from .base import Base

class DateRow(Base):
    """ map to a table name in db """
    __tablename__ = "date_dimension"

    """ create columns """
    date_key = Column(Date, primary_key=True)
    day = Column(Integer, nullable=False)
    day_suffix = Column(String(2), nullable=False)
    weekday = Column(Integer, nullable=False)
    weekday_name = Column(String(10), nullable=False)
    is_weekend = Column(Boolean, nullable=False)
    is_holiday = Column(Boolean, nullable=False)
    holiday_name = Column(String(64), nullable=True)
    days_of_week_in_month = Column(Integer, nullable=False)
    day_of_year = Column(Integer, nullable=False)
    week_of_month = Column(Integer, nullable=False)
    week_of_year = Column(Integer, nullable=False)
    iso_week_of_year = Column(Integer, nullable=False)
    month = Column(Integer, nullable=False)
    month_name = Column(String(10), nullable=False)
    calendar_year = Column(Integer, nullable=False)
    amis_term = Column(String(5), nullable=False)
    peoplesoft_term_code = Column(String(4), nullable=False)
    semester = Column(String(6), nullable=False)
    fiscal_year = Column(String(9), nullable=False)
    academic_year_leading_summer = Column(String(9), nullable=False)
    academic_year_trailing_summer = Column(String(9), nullable=False)
    mmyyyy = Column(String(6), nullable=False)
    month_year = Column(String(7), nullable=False)
    first_day_of_month = Column(Date, nullable=False)
    last_day_of_month = Column(Date, nullable=False)
    first_day_of_quarter = Column(Date, nullable=False)
    last_day_of_quarter = Column(Date, nullable=False)
    first_day_of_year = Column(Date, nullable=False)
    last_day_of_year = Column(Date, nullable=False)
    first_day_of_next_month = Column(Date, nullable=False)
    first_day_of_next_year = Column(Date, nullable=False)
    yyyymmdd = Column(Integer, nullable=False)

    
    def __init__(self, date_key, day, day_suffix, weekday, weekday_name, is_weekend,
                 is_holiday, days_of_week_in_month,
                 day_of_year, week_of_month, week_of_year, iso_week_of_year,
                 month, month_name, calendar_year,
                 amis_term, peoplesoft_term_code, semester, fiscal_year, 
                 academic_year_leading_summer, academic_year_trailing_summer,
                 mmyyyy, month_year, first_day_of_month, last_day_of_month,
                 first_day_of_quarter, last_day_of_quarter, first_day_of_year,
                 last_day_of_year, first_day_of_next_month, first_day_of_next_year,
                 yyyymmdd):
        """ method for instantiating object """
        self.date_key = date_key
        self.day = day
        self.day_suffix = day_suffix
        self.weekday = weekday
        self.weekday_name = weekday_name
        self.is_weekend = is_weekend
        self.is_holiday = is_holiday
        self.days_of_week_in_month = days_of_week_in_month
        self.day_of_year = day_of_year
        self.week_of_month = week_of_month
        self.week_of_year = week_of_year
        self.iso_week_of_year = iso_week_of_year
        self.month = month
        self.month_name = month_name
        self.calendar_year = calendar_year
        self.amis_term = amis_term
        self.peoplesoft_term_code = peoplesoft_term_code
        self.semester = semester
        self.fiscal_year = fiscal_year
        self.academic_year_leading_summer = academic_year_leading_summer
        self.academic_year_trailing_summer = academic_year_trailing_summer
        self.mmyyyy = mmyyyy
        self.month_year = month_year
        self.first_day_of_month = first_day_of_month
        self.last_day_of_month = last_day_of_month
        self.first_day_of_quarter = first_day_of_quarter
        self.last_day_of_quarter = last_day_of_quarter
        self.first_day_of_year = first_day_of_year
        self.last_day_of_year = last_day_of_year
        self.first_day_of_next_month = first_day_of_next_month
        self.first_day_of_next_year = first_day_of_next_year
        self.yyyymmdd = yyyymmdd

    
    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'date_key={self.date_key!r}, '
            f'day={self.day!r}, '
            f'day_suffix={self.day_suffix!r}, '
            f'weekday={self.weekday!r}, '
            f'weekday_name={self.weekday_name!r}, '
            f'is_weekend={self.is_weekend!r}, '
            f'is_holiday={self.is_holiday!r}, '
            f'days_of_week_in_month={self.days_of_week_in_month!r}, '
            f'day_of_year={self.day_of_year!r}, '
            f'week_of_month={self.week_of_month!r}, '
            f'week_of_year={self.week_of_year!r}, '
            f'iso_week_of_year={self.iso_week_of_year!r}, '
            f'month={self.month!r}, '
            f'month_name={self.month_name!r}, '
            f'calendar_year={self.calendar_year!r}, '
            f'amis_term={self.amis_term!r}, '
            f'peoplesoft_term_code={self.peoplesoft_term_code!r}, '
            f'semester={self.semester!r}, '
            f'fiscal_year={self.fiscal_year!r}, '
            f'academic_year_leading_summer={self.academic_year_leading_summer!r}, '
            f'academic_year_trailing_summer={self.academic_year_trailing_summer!r}, '
            f'mmyyyy={self.mmyyyy!r}, '
            f'month_year={self.month_year!r}, '
            f'first_day_of_month={self.first_day_of_month!r}, '
            f'last_day_of_month={self.last_day_of_month!r}, '
            f'first_day_of_quarter={self.first_day_of_quarter!r}, '
            f'last_day_of_quarter={self.last_day_of_quarter!r}, '
            f'first_day_of_year={self.first_day_of_year!r}, '
            f'last_day_of_year={self.last_day_of_year!r}, '
            f'first_day_of_next_month={self.first_day_of_next_month!r}, '
            f'first_day_of_next_year={self.first_day_of_next_year!r}, '
            f'yyyymmdd={self.yyyymmdd!r})'
            )
