function varargout = perturbPoint2(varargin)
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'double') && isa(varargin{3},'numeric')
        gtsam_wrapper(91, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'double')
        gtsam_wrapper(92, varargin{:});
      else
        error('Arguments do not match any overload of function perturbPoint2');
      end
