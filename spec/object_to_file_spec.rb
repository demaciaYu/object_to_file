RSpec.describe ObjectToFile do
  it "has a version number" do
    expect(ObjectToFile::VERSION).not_to be nil
  end

  it "test for To::yml" do
    file = StringIO.new()
    expect(File).to receive(:open).with("./nihao.yml", "w").and_yield(file)
    expect(file).to receive(:write).with("---\n- 1\n- 2\n- 3\n")
    ObjectToFile::To.yml([1,2,3], './nihao.yml')
  end
end
