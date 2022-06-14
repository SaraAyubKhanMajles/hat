#REQUIREMENTS
#color: White /Red
#style: Top Hat
#size: Between 20 and 30 (exclusive) cm in height


class Hat
    def height_in_cm
        25
    end

    def color
        'white'
    end

    def style
        "top hat"
    end
end

describe 'hat' do
    let(:hat) { Hat.new }
    it 'exists' do
     expect(Hat.new).not_to eq(nil)
    end

    it 'has a style' do
        expect(hat.style).not_to eq(nil)
    end

    it 'is a top hat' do
        expect(hat.style).to eq('top hat')
    end

    it 'is small' do
     expect(hat.height_in_cm).to be_between(20,30).exclusive
    end

    it "has a color" do
        expect(hat.color).not_to eq(nil)

    end

    it 'is the color' do
        expect(['white', 'red']).to include(hat.color)
    end
end



















