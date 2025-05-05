-- Add new columns if they don't exist
DO $$ 
BEGIN
    -- Add task_type column if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns 
                  WHERE table_name = 'tasks' AND column_name = 'task_type') THEN
        ALTER TABLE tasks ADD COLUMN task_type text NOT NULL DEFAULT '5min';
    END IF;

    -- Add duration column if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns 
                  WHERE table_name = 'tasks' AND column_name = 'duration') THEN
        ALTER TABLE tasks ADD COLUMN duration integer NOT NULL DEFAULT 5;
    END IF;
END $$;

-- Create new indexes if they don't exist
DO $$ 
BEGIN
    -- Create task_type index if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM pg_indexes 
                  WHERE tablename = 'tasks' AND indexname = 'tasks_task_type_idx') THEN
        CREATE INDEX tasks_task_type_idx ON tasks(task_type);
    END IF;
END $$; 