require "./lib/caesar_cipher.rb"

describe "#caesar_cipher" do
    it "should return encrypted word 'Btwi'" do
        encrypted = caesar_cipher "WORD", 5
        
        expect(encrypted).to eql("Btwi")
    end

    it "should return encrypted word 'Bcde'" do
        encrypted = caesar_cipher "aBcD", 1
        
        expect(encrypted).to eql("Bcde")
    end

    it "should return encrypted word 'Word'" do
        encrypted = caesar_cipher "word", 0
        
        expect(encrypted).to eql("Word")
    end

    it "should return empty string" do
        encrypted = caesar_cipher "", 0
        
        expect(encrypted).to eql("")
    end

    it "should return empty string" do
        encrypted = caesar_cipher "    ", 0
        
        expect(encrypted).to eql("")
    end

    it "should return 'C'" do
        encrypted = caesar_cipher " b   ", 1
        
        expect(encrypted).to eql("C")
    end
end