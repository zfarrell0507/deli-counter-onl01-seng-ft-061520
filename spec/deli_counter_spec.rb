describe 'Deli Counter' do

  let(:katz_deli) { [] }
  let(:other_deli) { ["Logan", "Avi", "Spencer"] }
  let(:another_deli) { ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"] }



  describe "#take_a_number" do
    context "there is nobody in line" do
      it "should add a person to the line" do
        expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
        take_a_number(katz_deli, "Ada")
        expect(katz_deli).to eq(["Ada"])
      end
    end

    context "there are already people in line" do
      it "should add a person to the end of the line" do
        # This weird looking %w syntax is just another way to instantiate an
        # Array. %w(item1 item2) is equivalent to ["item1", "item2"]
        expect($stdout).to receive(:puts).with("Welcome, Grace. You are number 4 in line.")
        take_a_number(other_deli, "Grace")
        expect(other_deli).to eq(%w(Logan Avi Spencer Grace))
      end
    end

    context "adding multiple people in a row" do
      it "should correctly build the line" do
        take_a_number(katz_deli, "Ada")
        take_a_number(katz_deli, "Grace")
        take_a_number(katz_deli, "Kent")
        expect(katz_deli).to eq(%w(Ada Grace Kent))
      end
    end
  end

  describe "#now_serving" do


    context "there are people in line" do
      it "should serve the first person in line and remove them from the queue" do
        expect($stdout).to receive(:puts).with("Currently serving Logan.")
        now_serving(other_deli)
        expect(other_deli).to eq(%w(Avi Spencer))
      end
    end
  end

end
