function varargout = IndexPairSetAsArray(varargin)
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPairSet')
        varargout{1} = gtsam_wrapper(202, varargin{:});
      else
        error('Arguments do not match any overload of function IndexPairSetAsArray');
      end
