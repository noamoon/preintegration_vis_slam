function varargout = mrsymbol(varargin)
      if length(varargin) == 3 && isa(varargin{1},'unsigned char') && isa(varargin{2},'unsigned char') && isa(varargin{3},'numeric')
        varargout{1} = gtsam_wrapper(2510, varargin{:});
      else
        error('Arguments do not match any overload of function mrsymbol');
      end
