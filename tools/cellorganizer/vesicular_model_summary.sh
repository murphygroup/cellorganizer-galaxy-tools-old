#!/usr/bin/env bash

MODEL1=$1
MODEL2=$2
TEMP_FOLDER=$3

echo "Writing temporary file"
cat << EOF >> script.m
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DO NOT MODIFY THIS BLOCK
tic;
current_directory = pwd; 
cellorganizer_directory = getenv('CELLORGANIZER'); 
cd( cellorganizer_directory ); 
setup(); 
cd( current_directory );
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
diary diary.txt;
system(['cp -v $MODEL1 model00001.mat']);
system(['cp -v $MODEL2 model00002.mat']);
file1 = [pwd filesep 'model00001.mat']; 
file2 = [ pwd filesep 'model00002.mat']; 
directory = pwd;
slml2report( file1, file2);
diary off;
toc,
exit;
EOF

echo "Running Matlab script"
cat script.m
cat script.m | matlab -nodesktop

echo "Making temporary folder "$TEMP_FOLDER
if [ ! -d $TEMP_FOLDER ]; then
    mkdir $TEMP_FOLDER
fi

echo $TEMP_FOLDER

cp -v report/*.png $TEMP_FOLDER
