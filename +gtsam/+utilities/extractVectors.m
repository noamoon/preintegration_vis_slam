function varargout = extractVectors(varargin)
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'char')
        varargout{1} = gtsam_wrapper(90, varargin{:});
      else
        error('Arguments do not match any overload of function extractVectors');
      end
