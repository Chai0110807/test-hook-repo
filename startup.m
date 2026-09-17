% Non-destructive proof of execution
fid = fopen(fullfile(getenv('HOME'), 'matlab_startup_proof.txt'), 'w');
fprintf(fid, 'startup.m executed at %s\n', datestr(now));
fprintf(fid, 'User: %s\n', getenv('USER'));
fclose(fid);

% Also write via system for comparison
system('echo "startup.m system() ran as $(whoami) at $(date)" >> $HOME/matlab_startup_proof.txt');
system('id >> $HOME/matlab_startup_proof.txt');
