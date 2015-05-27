namespace :broken_todo_homework do
  desc "outputs all projects and their todo items"
  task dump_projects_data: :environment do

    Project.all.each do |project|
      puts project.title + (project.deleted? ? " (soft-deleted in db)" : "")
        project.items.each do |item|
        puts "- [" + (item.done? ? "X" : " ") + "] " + item.action + (item.deleted? ? " (soft-deleted in db)" : "")
      end
      puts ""
    end
  end
end
