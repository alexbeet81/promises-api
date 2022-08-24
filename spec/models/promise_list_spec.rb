require "rails_helper"

RSpec.describe PromiseList, type: :model do
  context "validation tests" do
    it "returns false if no title present" do
      promise_list = PromiseList.new(description: "test").save
      expect(promise_list).to eq(false)
    end

    it "returns false if no description is present" do
      promise_list = PromiseList.new(title: "test").save
      expect(promise_list).to eq(false)
    end

    it "returns true if both description and title is present" do
      promise_list = PromiseList.new(title: "test", description: "test").save
      expect(promise_list).to eq(false)
    end
  end
end
