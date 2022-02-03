function varargout = readBal(varargin)
      if length(varargin) == 1 && isa(varargin{1},'char')
        varargout{1} = gtsam_wrapper(3101, varargin{:});
      else
        error('Arguments do not match any overload of function readBal');
      end
