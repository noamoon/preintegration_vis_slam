function varargout = mrsymbolLabel(varargin)
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2512, varargin{:});
      else
        error('Arguments do not match any overload of function mrsymbolLabel');
      end
