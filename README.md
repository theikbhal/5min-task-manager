# 5-Minute Task Manager

A simple and efficient task management application that helps you focus on tasks in 5-minute intervals. Built with HTML, CSS, and JavaScript, using Supabase for data storage.

## Features

- Quick 5-minute task management
- Timer functionality with audio notifications
- Task categorization (5min and Big Tasks)
- Real-time task updates
- Drag and drop task reordering
- Local storage backup
- Responsive design

## Setup

1. Clone the repository
2. Create a Supabase project and get your API keys
3. Create a `config.js` file with your Supabase credentials:
```javascript
const SUPABASE_URL = 'your-project-url';
const SUPABASE_ANON_KEY = 'your-anon-key';
```
4. Open `index.html` in your browser or serve it using a local server:
```bash
python -m http.server 8000
```

## Database Setup

1. Go to your Supabase project
2. Open the SQL Editor
3. Run the `schema.sql` file to create the necessary tables and indexes
4. Run the `migrate.sql` file to add any new columns if needed

## Development

- `index.html` - Main application file
- `config.js` - Configuration file for Supabase credentials
- `schema.sql` - Database schema
- `migrate.sql` - Database migration script

## License

MIT License