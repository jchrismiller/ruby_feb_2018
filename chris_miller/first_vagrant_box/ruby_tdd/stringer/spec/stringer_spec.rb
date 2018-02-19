require 'spec_helper'
RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates strings" do
    expect(Stringer.spacify "Hello", "World").to eq("Hello World")
  end

  it "minifies strings" do
  	expect(Stringer.minify "Hello World", 10).to eq("Hello Worl...")
  end

  it "replaces word in a string with new word" do
  	expect(Stringer.replacify "Hello World", "World", "Dojo")
  end

  it "turns a string into an array" do
  	expect(Stringer.tokenize "Hello World")
  end

  it "removes a word from a string" do
  	expect(Stringer.removify "Hello World", "World")
  end
end
