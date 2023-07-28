Task 2: I added doc blocks for all sources

Task 3: Installed dbt_project_evaluator and resolved all issues. 
- Used the dbt_project_evaluator_exceptions.csv to resolve the dim_dates issue
- Moved the dim_* models in the intermediate dir to marts/core
- Created doc for fct_events
- Renamed mrr to fct_mrr
- Created missing tests for fct_events