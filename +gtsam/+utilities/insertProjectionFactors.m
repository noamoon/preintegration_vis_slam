function varargout = insertProjectionFactors(varargin)
      if length(varargin) == 7 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double') && isa(varargin{5},'gtsam.noiseModel.Base') && isa(varargin{6},'gtsam.Cal3_S2') && isa(varargin{7},'gtsam.Pose3')
        gtsam_wrapper(98, varargin{:});
      elseif length(varargin) == 6 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double') && isa(varargin{5},'gtsam.noiseModel.Base') && isa(varargin{6},'gtsam.Cal3_S2')
        gtsam_wrapper(99, varargin{:});
      else
        error('Arguments do not match any overload of function insertProjectionFactors');
      end
