require './caesar_cipher'

describe "#shift_26" do
  it "returns a shift of 26 (original message)" do
    expect(caesar_cipher("hello world", 26)).to eq("hello world")
  end
end

describe "#shift_-26" do
  it "returns a shift of -26 (original message)" do
    expect(caesar_cipher("hello world", -26)).to eq("hello world")
  end
end

describe "#shift_3" do
  it "returns a shift of 3" do
    expect(caesar_cipher("hello world", 3)).to eq("khoor zruog")
  end
end

describe "#shift_3_caps" do
  it "returns a shift of 3, all caps" do
    expect(caesar_cipher("HELLO WORLD", 3)).to eq("KHOOR ZRUOG")
  end
end

describe "#shift_840" do
  it "returns a shift of 840" do
    expect(caesar_cipher("Hello world", 840)).to eq("Pmttw ewztl")
  end
end

describe "#decode_shift_3" do
  it "decodes shifted 3 message" do
    expect(caesar_cipher("khoor zruog", -3)).to eq("hello world")
  end
end

describe "#ignore_punctuation" do
  it "ignores punctuation" do
    expect(caesar_cipher("!@#$%^&*Hello!@#", 3)).to eq("!@#$%^&*Khoor!@#")
  end
end

describe "#blank_string" do
  it "returns an empty string when given an empty string" do
    expect(caesar_cipher("", 4)).to eq("")
  end
end
