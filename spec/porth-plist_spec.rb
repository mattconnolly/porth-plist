require "rspec"
require 'spec_helper'


describe "Render to plist" do


  def template_dir
    File.expand_path('../../test/fixtures', __FILE__)
  end

  def render file, format, assigns = {}
    ActionView::Base.new(template_dir, assigns, @controller).tap do |view|
      view.lookup_context.freeze_formats [format]
    end.render :file => file
  end

  it "outputs an array of hashes as a plist" do

    output = render('block', :plist)
    output.should =~ /!DOCTYPE plist/

    decoded = Plist::parse_xml output

    decoded.class.should == Array
    decoded.length.should == 2
    decoded[0].class.should == Hash
    decoded[1].class.should == Hash
    decoded[0]["value"].should == 1
    decoded[1]["value"].should == 2

  end

  it "outputs an instance variable into a plist" do

    output = render('instance_variable', :plist, 'foo' => 'bar')
    output.should =~ /!DOCTYPE plist/

    decoded = Plist::parse_xml output

    decoded.class.should == Array
    decoded[0].should == 'bar'
  end
end