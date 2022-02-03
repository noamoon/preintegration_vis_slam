function varargout = V(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1587, varargin{:});
      else
        error('Arguments do not match any overload of function V');
      end
