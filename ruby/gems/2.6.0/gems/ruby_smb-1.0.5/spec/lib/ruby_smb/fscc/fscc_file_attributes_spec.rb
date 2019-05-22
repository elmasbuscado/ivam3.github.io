RSpec.describe RubySMB::Fscc::FileAttributes do
  subject(:attrs) { described_class.new }

  it { is_expected.to respond_to :normal }
  it { is_expected.to respond_to :device }
  it { is_expected.to respond_to :archive }
  it { is_expected.to respond_to :directory }
  it { is_expected.to respond_to :volume }
  it { is_expected.to respond_to :system }
  it { is_expected.to respond_to :hidden }
  it { is_expected.to respond_to :read_only }
  it { is_expected.to respond_to :encrypted }
  it { is_expected.to respond_to :content_indexed }
  it { is_expected.to respond_to :offline }
  it { is_expected.to respond_to :compressed }
  it { is_expected.to respond_to :reparse_point }
  it { is_expected.to respond_to :sparse }
  it { is_expected.to respond_to :temp }

  it 'is little endian' do
    expect(described_class.fields.instance_variable_get(:@hints)[:endian]).to eq :little
  end

  describe 'read_only' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.read_only).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :read_only, 'V', 0x00000001
  end

  describe 'hidden' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.hidden).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :hidden, 'V', 0x00000002
  end

  describe 'system' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.system).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :system, 'V', 0x00000004
  end

  describe 'volume' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.volume).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :volume, 'V', 0x00000008
  end

  describe 'directory' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.directory).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :directory, 'V', 0x00000010
  end

  describe 'archive' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.archive).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :archive, 'V', 0x00000020
  end

  describe 'device' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.device).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :device, 'V', 0x00000040
  end

  describe 'normal' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.normal).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :normal, 'V', 0x00000080
  end

  describe 'temp' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.temp).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :temp, 'V', 0x00000100
  end

  describe 'sparse' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.sparse).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :sparse, 'V', 0x00000200
  end

  describe 'reparse_point' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.reparse_point).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :reparse_point, 'V', 0x00000400
  end

  describe 'compressed' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.compressed).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :compressed, 'V', 0x00000800
  end

  describe 'offline' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.offline).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :offline, 'V', 0x00001000
  end

  describe 'content_indexed' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.content_indexed).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :content_indexed, 'V', 0x00002000
  end

  describe 'encrypted' do
    it 'should be a 1-bit field per the SMB spec' do
      expect(attrs.encrypted).to be_a BinData::Bit1
    end

    it_behaves_like 'bit field with one flag set', :encrypted, 'V', 0x00004000
  end
end
