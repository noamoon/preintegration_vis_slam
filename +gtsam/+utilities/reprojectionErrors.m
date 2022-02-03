function varargout = reprojectionErrors(varargin)
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(100, varargin{:});
      else
        error('Arguments do not match any overload of function reprojectionErrors');
      end
