require 'spec_helper'

describe School do
    let(:user) { FactoryGirl.create(:user) }
    before { @school = user.schools.build(college: "College", major: "Major", student: "Student Type", date: "Graduation Date") }
        
    end
    
    subject { @school }
    
    it { should respond_to(:user_id) }
    it { should respond_to(:college) }
    it { should respond_to(:major) }
    it { should respond_to(:student) }
    it { should respond_to(:date) }
    it { should respond_to(:user) }
    its(:user) { should == user }
    
    it { should be_valid }

    describe "accessible attributes" do
    it "should not allow access to user_id" do
        expect do
            School.new(user_id: user.id)
        end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
end

    describe "when user_id is not present" do
        before { @school.user_id = nil }
        it { should_not be_valid }
        end
        end