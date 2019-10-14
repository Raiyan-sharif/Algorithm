DROP table BORROWER;
DROP table DEPOSITOR;
DROP table LOAN;
DROP table ACCOUNT;
DROP table CUSTOMER;
DROP table BRANCH;

create table branch
	(	branch_id number(10) not null,
		branch_name varchar2(50) not null,
		branch_city varchar2(30),
		assets number(20),
		CONSTRAINT branch_pk PRIMARY KEY (branch_id)
	);
create table customer
	(	customer_id number(10) not null,
		customer_name varchar2(50) not null,
		customer_strees varchar2(30),
		customer_city varchar2(30),
		CONSTRAINT customer_pk PRIMARY KEY (customer_id)
	);

create table account
	(
		account_number number(20) not null,
		balance number(30),
		branch_id number(10) not null,
		CONSTRAINT account_pk PRIMARY KEY (account_number),
		CONSTRAINT fk_branch FOREIGN KEY (branch_id) REFERENCES branch(branch_id)	
	);

create table loan
	(
		loan_number number(20) not null,
		amount number(20) not null,
		branch_id number(10) not null,
		CONSTRAINT loan_pk PRIMARY KEY (loan_number),
		CONSTRAINT fk2_branch FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
	);

create table depositor
	(
		account_number number(20) not null,
		customer_id number(10) not null,
		CONSTRAINT fk_account FOREIGN KEY (account_number) REFERENCES account(account_number),
		CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	);

create table borrower
	(
		loan_number number(20) not null,
		customer_id number(10) not null,
		CONSTRAINT fk_loan FOREIGN KEY (loan_number) REFERENCES loan(loan_number),
		CONSTRAINT fk2_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	);
	
describe branch;
describe customer;
describe account;
describe loan;
describe depositor;
describe borrower;


