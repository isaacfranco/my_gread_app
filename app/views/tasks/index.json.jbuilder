json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :priority, :task_id, :project_id, :user_id
  json.url task_url(task, format: :json)
end
