CREATE TABLE �볺��(
	���_�볺��� INTEGER NOT NULL,
	��� CHAR(15) NOT NULL,
	�����_�������� INTEGER,
	������� CHAR(20) NOT NULL,
	��_������� CHAR(20) NOT NULL,
	����������_����� VARCHAR(50) NOT NULL,
	PRIMARY KEY (���_�볺���),	
);

CREATE TABLE ������������(
	���_������������� INTEGER NOT NULL,
	�����_����� CHAR(15) NOT NULL,
	���������_��_���_������� VARCHAR(30) NOT NULL,
	̳���_������������ CHAR(20) NOT NULL, 
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	�����_�������� INTEGER,
	PRIMARY KEY (���_�������������)
);

CREATE TABLE �����������(
	���_������������ INTEGER NOT NULL,
	��� CHAR(15) NOT NULL,
	�����_��������_������������ INTEGER,
	������� CHAR(20) NOT NULL,
	��_������� CHAR(20) NOT NULL,
	����������_����� VARCHAR(50) NOT NULL,
	PRIMARY KEY (���_������������),	
);

CREATE TABLE �����(
	���_������ INTEGER NOT NULL,
	�����_������ CHAR(15) NOT NULL,
	���������_��_���_������� VARCHAR(50) NOT NULL,
	̳���_������������ CHAR(15) NOT NULL, 
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	����_������ CHAR(100) NOT NULL,
	PRIMARY KEY (���_������)
);

CREATE TABLE ����(
	���_���� INTEGER NOT NULL,
	���_���� CHAR(20) NOT NULL,
	���� CHAR(15) NOT NULL,
	������ CHAR(20) NOT NULL, 
	г�_������� INTEGER NOT NULL,
	�����������_�������� INTEGER NOT NULL,
	PRIMARY KEY (���_����)
);

CREATE TABLE ��������(
	���_��������� INTEGER NOT NULL, 	
	���_������ INTEGER NOT NULL,
	���_������������ INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	PRIMARY KEY(���_���������),
	CONSTRAINT �������
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��������������
	FOREIGN KEY(���_������������)
	REFERENCES �����������
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE ������_���_������(
	���_��������_���_������ INTEGER NOT NULL, 	
	���_�볺��� INTEGER NOT NULL,
	���_������ INTEGER NOT NULL,
	���_���� INTEGER NOT NULL,
	���_������������ INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	ֳ��_������ MONEY NOT NULL,
	PRIMARY KEY(���_��������_���_������),
	CONSTRAINT ���볺���
	FOREIGN KEY(���_�볺���)
	REFERENCES �볺��
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ������
	FOREIGN KEY(���_����)
	REFERENCES ����
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_������������
	FOREIGN KEY(���_������������)
	REFERENCES �����������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_�����
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

CREATE TABLE ������_��������(
	���_��������_�������� INTEGER NOT NULL, 	
	���_������ INTEGER NOT NULL,
	���_������������� INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	ʳ������_���� INTEGER NOT NULL,
	������_���� CHAR(80) NOT NULL,
	����_������� MONEY NOT NULL,
	PRIMARY KEY(���_��������_��������),
	CONSTRAINT ��������
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ���������������
	FOREIGN KEY(���_�������������)
	REFERENCES ������������
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
