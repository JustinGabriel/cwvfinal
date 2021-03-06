require 'spec_helper'

describe Micropost do
<<<<<<< HEAD
    
    let(:user) { FactoryGirl.create(:user) }
    
    before do
        @micropost = user.microposts.build(content: "Lorem ipsum")
    end
    
    subject { @micropost }
    
    it { should respond_to(:content) }
    it { should respond_to(:user_id) }
    it { should respond_to(:user) }
    its(:user) { should == user }
    
    it { should be_valid }
    
    describe "accessible attributes" do
        it "should not allow access to user_id" do
            expect do
                Micropost.new(user_id: "1")
            end.should raise_error(ActiveModel::MassAssignmentSecurity::Error)
        end
    end
    
    describe "when user_id is not present" do
        before { @micropost.user_id = nil }
        it { should_not be_valid }
    end
    
    describe "with blank content" do
        before { @micropost.content = " " }
        it { should_not be_valid }
    end
    
    describe "with content that is too long" do
        before { @micropost.content = "a" * 1000 }
        it { should_not be_valid }
    end
end
=======
  pending "add some examples to (or delete) #{__FILE__}"
end
>>>>>>> 881ee705febd4004d6343ba22e02d84535086797
