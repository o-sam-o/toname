require 'spec_helper'

describe FileNameInfo do
  
  context 'to_s' do
    it 'should correctly convert to a string' do                                
      ToName.to_name('/test/Inglourious Basterds PPV XViD-IMAGiNE.nfo').to_s.should == 'Inglourious Basterds'
  	end  

	  it 'should include name and year' do
      FileNameInfo.new(:name => 'Movie', :year => 2000).to_s.should == 'Movie (2000)'	  
	  end
	
	  it 'should work if only raw name' do
      FileNameInfo.new(:raw_name => 'raw name').to_s.should == 'raw name'	  
	  end
	  
	  it 'should work if only location' do
      FileNameInfo.new(:location => 'location').to_s.should == 'location'	  
	  end    
  end
  
  context 'sorting' do
    
    it 'should sort by name' do
      one = FileNameInfo.new(:name => 'apple')
      two = FileNameInfo.new(:name => 'pear')
      
      (one <=> two).should < 0
    end  
    
    it 'should sort by year if the name is the same' do
      one = FileNameInfo.new(:name => 'apple', :year => 2000)
      two = FileNameInfo.new(:name => 'apple', :year => 1990)
      
      (one <=> two).should < 0
    end  
     
    context 'tv shows' do
      
      it 'should sort by series' do
        one = FileNameInfo.new(:name => 'apple', :series => 2)
        two = FileNameInfo.new(:name => 'pear', :series => 1)

        (one <=> two).should > 0
      end  
      
      it 'should sort by episode if series is the same' do
        one = FileNameInfo.new(:name => 'name', :series => 2, :episode => 1)
        two = FileNameInfo.new(:name => 'name', :series => 2, :episode => 2)

        (one <=> two).should < 0
      end  
      
    end  
     
  end  
	
  
end