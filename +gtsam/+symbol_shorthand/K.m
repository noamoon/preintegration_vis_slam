function varargout = K(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1576, varargin{:});
      else
        error('Arguments do not match any overload of function K');
      end
