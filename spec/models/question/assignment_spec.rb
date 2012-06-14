require "spec_helper"

describe Question, "assignment" do
  it "doesn't throw exception" do
    expect{
      Question.create({
       :title => "Question One",
       :description => "Lorem Ipsum is simply dummy text of the printing"
      })
    }.to_not raise_error
  end
end
