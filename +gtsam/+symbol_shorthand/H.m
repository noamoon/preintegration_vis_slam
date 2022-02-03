function varargout = H(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1573, varargin{:});
      else
        error('Arguments do not match any overload of function H');
      end
