function varargout = allPose3s(varargin)
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(88, varargin{:});
      else
        error('Arguments do not match any overload of function allPose3s');
      end
