ALTER TABLE ������_��������
DROP CONSTRAINT ��������;

ALTER TABLE �����
	DROP COLUMN ������;
ALTER TABLE �����
ALTER COLUMN ������� decimal(9,0) NOT NULL;

ALTER TABLE ��������
ALTER COLUMN ����_���������� varchar(20) NULL;

ALTER TABLE ������_���_������
ALTER COLUMN ���_��������_���_������ decimal(9,0) NOT NULL;

ALTER TABLE ������_���_������
ADD ID_�������� nvarchar(20);

ALTER TABLE ������_���_������
    ADD CONSTRAINT ID_��������  UNIQUE (���_��������_���_������, Language);

	ALTER TABLE ������_��������
DROP CONSTRAINT ��������;

ALTER TABLE ������_��������
ADD CONSTRAINT �������� FOREIGN KEY (������) REFERENCES �����(���_������) ON DELETE NO ACTION;
