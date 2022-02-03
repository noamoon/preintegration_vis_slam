function varargout = writeG2o(varargin)
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'char')
        gtsam_wrapper(3116, varargin{:});
      else
        error('Arguments do not match any overload of function writeG2o');
      end
