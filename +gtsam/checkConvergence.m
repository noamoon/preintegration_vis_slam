function varargout = checkConvergence(varargin)
      if length(varargin) == 5 && isa(varargin{1},'double') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double')
        varargout{1} = gtsam_wrapper(2514, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearOptimizerParams') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(2515, varargin{:});
      else
        error('Arguments do not match any overload of function checkConvergence');
      end
