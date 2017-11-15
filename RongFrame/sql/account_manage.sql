drop VIEW   account_manage;
CREATE VIEW account_manage AS
  ( SELECT
    t1.id,
    t1.account,
    t5.name dep_name,
    t5.parent_id dep_parent_id,
    t5.id dep_id
  FROM account t1 
      LEFT JOIN department_account t4 on t4.account_id=t1.id
    LEFT JOIN department t5 on t5.id=t4.dep_id);
