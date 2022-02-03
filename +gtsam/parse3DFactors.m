function varargout = parse3DFactors(varargin)
      if length(varargin) == 1 && isa(varargin{1},'char')
        varargout{1} = gtsam_wrapper(3112, varargin{:});
      else
        error('Arguments do not match any overload of function parse3DFactors');
      end
