require 'rails_helper'

RSpec.describe Project, :type => :model do
  subject { Project.new(params) }

  let(:params) {
    {
      :title => 'Some Big Project'
    }
  }

  describe "validations" do
    it "is valid with valid params" do
      expect(subject).to be_valid
    end

    it "requires a title" do
      params[:title] = ''

      expect(subject).to_not be_valid
      expect(subject.errors.keys).to eq [:title]
    end

    it "requires title be unique across all projects" do
      subject.save

      duplicate_action = Project.new(params)

      expect(duplicate_action).to_not be_valid
      expect(duplicate_action.errors.keys).to include :title
    end

  end
end
