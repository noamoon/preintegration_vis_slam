function varargout = PrintKeySet(varargin)
      if length(varargin) == 3 && isa(varargin{1},'gtsam.KeySet') && isa(varargin{2},'char') && isa(varargin{3},'gtsam.KeyFormatter')
        gtsam_wrapper(2507, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'gtsam.KeySet') && isa(varargin{2},'char')
        gtsam_wrapper(2508, varargin{:});
      elseif length(varargin) == 1 && isa(varargin{1},'gtsam.KeySet')
        gtsam_wrapper(2509, varargin{:});
      else
        error('Arguments do not match any overload of function PrintKeySet');
      end
