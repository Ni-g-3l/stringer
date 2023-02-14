# frozen_string_literal: true

require "spec_helper"

describe FeverAPI::ReadLinks do
  subject { described_class.new }

  it "returns a fixed link list if requested" do
    expect(subject.call("links" => nil)).to eq(links: [])
  end

  it "returns an empty hash otherwise" do
    expect(subject.call).to eq({})
  end
end