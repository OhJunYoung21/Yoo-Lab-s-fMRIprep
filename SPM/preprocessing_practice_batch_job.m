clc %

root = '/Users/oj/Desktop/pre_BIDS/BIDS_RBD/' % specify the directory where your data lives
sub = {'sub-06','sub-07'}


for i = 1:numel(sub)

    disp(['Starting preprocessing for ', sub{i}]) % add a print statement to tell you which subject is being processed

    anat_dir = fullfile(root, sub{i}, 'anat') % this combines the root with a specific subject directory to create the full path to the folder containing anatomical data
    func_dir = fullfile(root, sub{i}, 'func') % this combines the root with a specific subject directory to create the full path to the folder containing functional data

    % find the structural file
    anat = spm_select('FPList', anat_dir, '^sub-*.*_acq-Sagittal3DT1GRECORAX1mmMPR_rec-BRAINMRINONCONTRASTDIFFUSION_T1w.nii$') % this will return the full path (FP) to the T1 file from the anat directory

    %find and select the functional data
    func = spm_select('ExtFPList', func_dir, '^sub-*.*_task-BRAINMRINONCONTRASTDIFFUSION_acq-AxialfMRIrest_bold.nii$', NaN) % this will give the full path to the task data, NaN will ensure you are loading all volumes present (i.e. consider the 4D file as a whole)

    cd(func_dir);



    %-----------------------------------------------------------------------
    % Job saved on 16-Jul-2024 19:39:36 by cfg_util (rev $Rev: 8183 $)
    % spm SPM - SPM12 (dev)
    % cfg_basicio BasicIO - Unknown
    %-----------------------------------------------------------------------
    matlabbatch{1}.spm.spatial.realign.estwrite.data {1} = cellstr(func);
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 1.5;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 1;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [0 1];
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
    matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';
    matlabbatch{2}.spm.temporal.st.scans{1}(1) = cfg_dep('Realign: Estimate & Reslice: Realigned Images (Sess 1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','cfiles'));
    matlabbatch{2}.spm.temporal.st.nslices = 35;
    matlabbatch{2}.spm.temporal.st.tr = 3;
    matlabbatch{2}.spm.temporal.st.ta = 2.91428571428571;
    matlabbatch{2}.spm.temporal.st.so = [35 33 31 29 27 25 23 21 19 17 15 13 11 9 7 5 3 1 34 32 30 28 26 24 22 20 18 16 14 12 10 8 6 4 2];
    matlabbatch{2}.spm.temporal.st.refslice = 17;
    matlabbatch{2}.spm.temporal.st.prefix = 'a';
    matlabbatch{3}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Realign: Estimate & Reslice: Mean Image', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rmean'));
    matlabbatch{3}.spm.spatial.coreg.estimate.source = cellstr(anat);
    matlabbatch{3}.spm.spatial.coreg.estimate.other = {''};
    matlabbatch{3}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
    matlabbatch{3}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
    matlabbatch{3}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
    matlabbatch{3}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
    matlabbatch{4}.spm.spatial.preproc.channel.vols(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
    matlabbatch{4}.spm.spatial.preproc.channel.biasreg = 0.0001;
    matlabbatch{4}.spm.spatial.preproc.channel.biasfwhm = 60;
    matlabbatch{4}.spm.spatial.preproc.channel.write = [0 1];
    matlabbatch{4}.spm.spatial.preproc.tissue(1).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,1'};
    matlabbatch{4}.spm.spatial.preproc.tissue(1).ngaus = 1;
    matlabbatch{4}.spm.spatial.preproc.tissue(1).native = [1 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(1).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(2).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,2'};
    matlabbatch{4}.spm.spatial.preproc.tissue(2).ngaus = 1;
    matlabbatch{4}.spm.spatial.preproc.tissue(2).native = [1 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(2).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(3).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,3'};
    matlabbatch{4}.spm.spatial.preproc.tissue(3).ngaus = 2;
    matlabbatch{4}.spm.spatial.preproc.tissue(3).native = [1 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(3).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(4).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,4'};
    matlabbatch{4}.spm.spatial.preproc.tissue(4).ngaus = 3;
    matlabbatch{4}.spm.spatial.preproc.tissue(4).native = [1 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(4).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(5).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,5'};
    matlabbatch{4}.spm.spatial.preproc.tissue(5).ngaus = 4;
    matlabbatch{4}.spm.spatial.preproc.tissue(5).native = [1 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(5).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(6).tpm = {'/Users/oj/Downloads/SPM12/spm-main/tpm/TPM.nii,6'};
    matlabbatch{4}.spm.spatial.preproc.tissue(6).ngaus = 2;
    matlabbatch{4}.spm.spatial.preproc.tissue(6).native = [0 0];
    matlabbatch{4}.spm.spatial.preproc.tissue(6).warped = [0 0];
    matlabbatch{4}.spm.spatial.preproc.warp.mrf = 1;
    matlabbatch{4}.spm.spatial.preproc.warp.cleanup = 1;
    matlabbatch{4}.spm.spatial.preproc.warp.reg = [0 0 0.1 0.01 0.04];
    matlabbatch{4}.spm.spatial.preproc.warp.affreg = 'mni';
    matlabbatch{4}.spm.spatial.preproc.warp.fwhm = 0;
    matlabbatch{4}.spm.spatial.preproc.warp.samp = 3;
    matlabbatch{4}.spm.spatial.preproc.warp.write = [0 1];
    matlabbatch{4}.spm.spatial.preproc.warp.vox = NaN;
    matlabbatch{4}.spm.spatial.preproc.warp.bb = [NaN NaN NaN
        NaN NaN NaN];
    matlabbatch{5}.spm.spatial.normalise.write.subj.def(1) = cfg_dep('Segment: Forward Deformations', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','fordef', '()',{':'}));
    matlabbatch{5}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep('Slice Timing: Slice Timing Corr. Images (Sess 1)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
    matlabbatch{5}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
        78 76 85];
    matlabbatch{5}.spm.spatial.normalise.write.woptions.vox = [3 3 3];
    matlabbatch{5}.spm.spatial.normalise.write.woptions.interp = 4;
    matlabbatch{5}.spm.spatial.normalise.write.woptions.prefix = 'w';

    disp(['Completed preprocessing for ', sub{i}]) % add a print statement telling you which subject has been processed

    save preprocessing_batch matlabbatch % save the setup into a matfile called preprocessing_batch.mat
    spm_jobman('run',matlabbatch) % execute the batch
    clear matlabbatch % clear matlabbatch
end
