-- BY��ȣ, �������� ���� �ش� ������ ���� ���� ���� VIEW - 2020.07.17
CREATE OR REPLACE VIEW THEATER_NOTICE AS
select B.seq_branch SEQ_BRANCH, BRANCH, seq_npart, title ntitle, content ncontent
            , to_char(regidate, 'YYYY.MM.dd') nregidate 
from notice N
JOIN BRANCH B
ON B.SEQ_BRANCH = N.SEQ_BRANCH
ORDER BY SEQ_BRANCH;

COMMIT;

SELECT *
FROM THEATER_NOTICE;