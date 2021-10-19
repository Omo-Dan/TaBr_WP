json.extract! workprofile, :id, :position_title, :position_name, :company, :industry, :experience_type, :location, :start_date, :end_date, :created_at, :updated_at
json.url workprofile_url(workprofile, format: :json)
