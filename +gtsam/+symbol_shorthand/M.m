function varargout = M(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1578, varargin{:});
      else
        error('Arguments do not match any overload of function M');
      end
