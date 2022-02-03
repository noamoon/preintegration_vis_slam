function varargout = initialize(varargin)
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(2979, varargin{:});
      elseif length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(2980, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2981, varargin{:});
      else
        error('Arguments do not match any overload of function initialize');
      end
