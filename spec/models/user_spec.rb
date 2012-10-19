require 'spec_helper'

describe User do
    it "requires a name, a password, and a city ID" do
        subject.should_not be_valid
        subject.name = 'Jacy'
        subject.password = 'password'
        subject.city_id = 1
        subject.should be_valid
    end
end
