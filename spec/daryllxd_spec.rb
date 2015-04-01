require "spec_helper"

RSpec.describe String do
  context "single syllable" do
    it "doesn't reverse the order" do
      expect("".darify!).to eq ""
      expect("aw".darify!).to eq "aw"
    end
  end

  context "2 syllables" do
    it "reverses the syllables" do
      expect("lester".darify!).to eq "terles"
      expect("buhat".darify!).to eq "hatbu"
    end
  end

  context "3 syllables" do
    it "rotates the syllable order" do
      expect("malupet".darify!).to eq "petmalu"
      expect("pagkain".darify!).to eq "inpagka"
    end
  end

  context "4 syllables, multiple vowels" do
    it "rotates the syllable order" do
      expect("tarantado".darify!).to eq "dotaranta"
      expect("maaari".darify!).to eq "rimaaa"
    end
  end

  context 'reserved words' do
    it 'follow their own rules' do
      expect("jedford".darify!).to eq "dejdorf"
      expect("buhat".darify!).to eq "hatbuts"
      expect("bente".darify!).to eq "tebents"
    end
  end
end
