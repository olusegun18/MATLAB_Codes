% names = {'Bola' 'Tolu' 'Joseph' 'Femi' 'Tobi' 'Feranmi'}
% col = randi([1 6],1,2)
% cn = names(1,col)

% [jj,Fs] = wavread('sound.wav')
%  sound(jj,50000)

        hafr = dsp.AudioFileReader('am.mp3');
       hap = dsp.AudioPlayer('SampleRate',45000);
       while ~isDone(hafr)
           audio = step(hafr);
           step(hap, audio);
       end



