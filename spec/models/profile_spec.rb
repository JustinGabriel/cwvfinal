require 'spec_helper'

describe Profile do
    
        
    let(:user) { FactoryGirl.create(:user) }
    before { @profile = user.profiles.build(major: "Lorem ipsum") }

            @profile = user.profile.build(user_id: user.id, school: "Colorado State", major: "Economics")
        end
        
        subject { @profile }
        
        
        it { should respond_to(:user_id) }
        it { should respond_to(:school) }
        it { should respond_to(:major) }
        it { should respond_to(:user) }
        its(:user) { should == user }
        
        it { should be_valid }

end
