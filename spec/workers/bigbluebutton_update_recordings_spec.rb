require 'spec_helper'

describe BigbluebuttonUpdateRecordings do

  it "runs BigbluebuttonRails::BackgroundTasks.finish_meetings" do
    expect(BigbluebuttonRails::BackgroundTasks).to receive(:update_recordings).once
    BigbluebuttonUpdateRecordings.perform
  end

  it "uses the queue :bigbluebutton_rails" do
    BigbluebuttonUpdateRecordings.instance_variable_get(:@queue).should eql(:bigbluebutton_rails)
  end

end
