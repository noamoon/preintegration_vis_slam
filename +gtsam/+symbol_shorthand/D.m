function varargout = D(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1569, varargin{:});
      else
        error('Arguments do not match any overload of function D');
      end
