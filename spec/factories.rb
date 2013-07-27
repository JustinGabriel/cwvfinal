FactoryGirl.define do
    factory :user do
        sequence(:name)  { |n| "Person #{n}" }
        sequence(:email) { |n| "person_#{n}@example.com" }
        password "foobar"
        password_confirmation "foobar"
        
        factory :admin do
            admin true
        end
    end
    
    factory :micropost do
        content "Lorem ipsum"
        user
    end
end
    factory :school do
        college: "College"
        major: "Major"
        student: "Student Type"
        date: "Graduation Date"
        user
    end
end