json.extract! project, :id, :project_name, :project_objectives, :project_role, :project_hours, :project_status, :created_at, :updated_at
json.url project_url(project, format: :json)
