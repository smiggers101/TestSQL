select EMPLID from PS_JOB where EMPLID = '1234'

select J.EMPLID from PS_JOB J where EMPLID = '1234' and EFFSEQ = (select max(EFFSEQ) from PS_JOB J2 WHERE J.EMPLID = J2.EMPLID AND J2.EFFSEQ <= GETDATE())
