require "spec_helper"

describe Question, "validations" do
  it { should allow("Question").for(:title) }
  it { should_not allow(nil).for(:title) }

  it { should allow("Some Description").for(:description) }
  it { should_not allow(nil).for(:description) }


end
