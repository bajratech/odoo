from enum import Enum

class DhiBillStatus(Enum):
    OPEN = 1
    CLOSED = 2
    INVOICED = 3

class DhiBillLineStatus(Enum):
    UNPAID = 1
    PAID = 2
    PAID_BY_INSURANCE = 3
    INVALID = 5

class DhiInvoiceStatus(Enum):
    OPEN = 1
    CLOSED = 2
    SENT_TO_INSURANCE = 3

class DhiInvoiceLineStatus(Enum):
    UNPAID = 1
    PAID = 2
    PAID_BY_INSURANCE = 3

class DhiCurrency(Enum):
    NPR = 1
    USD = 2
    EURO = 3
    AUD = 4
    GBP = 5

class DhiFeeScheduleType(Enum):
    DEFAULT = 1
    NATIONALITY = 2
    INSURANCE = 3

class DhiTestType(Enum):
    LAB = 1
    IMAGING = 2
    VACCINATION = 3
    PROCEDURE = 4
    SERVICE = 5