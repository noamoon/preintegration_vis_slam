function varargout = readG2o(varargin)
      if length(varargin) == 1 && isa(varargin{1},'char')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3114, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'logical')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3115, varargin{:});
      else
        error('Arguments do not match any overload of function readG2o');
      end
