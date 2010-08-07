require 'spec_helper'

describe FileNameInfo do
  
  context 'to_s' do
  
    it 'should correctly convert to a string' do                                
      ToName.to_name('/test/Inglourious Basterds PPV XViD-IMAGiNE.nfo').to_s.should == 'Inglourious Basterds'
  	end  
	
	  it 'should work if only raw name' do
      FileNameInfo.new(:raw_name => 'raw name').to_s.should == 'raw name'	  
	  end
	  
	  it 'should work if only location' do
      FileNameInfo.new(:location => 'location').to_s.should == 'location'	  
	  end    
  end
	
  
end