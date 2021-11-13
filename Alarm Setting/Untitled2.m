  hafr = dsp.AudioFileReader('am.mp3');
       hap = dsp.AudioPlayer('SampleRate',45000);
       while ~isDone(hafr)
           audio = step(hafr);
           step(hap, audio);
       end