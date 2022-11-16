-- INDEX MAINTENANCE

-- Duplicate Indexes -> double indexes created on the same columns (A, B, C)

-- Redundant Indexes -> when we have indexes on (A, B) and only on column A, but not on (B, A).

-- Before creating new indexes, check the existing ones and make sure to drop duplicate,

-- redundant as well as unused indexes;