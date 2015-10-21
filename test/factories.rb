FactoryGirl.define do
  sequence(:task_title) { |n| "Task ##{n}" }

  factory :project do
    name "My First Project"

    factory :project_with_tasks do
      transient do
        tasks_count 5
      end

      after(:create) do |project, evaluator|
        create_list :task, evaluator.tasks_count, project: project
      end
    end
  end

  factory :task do
    title { generate(:task_title) }
  end
end
