function varargout = symbol(varargin)
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(2498, varargin{:});
      else
        error('Arguments do not match any overload of function symbol');
      end