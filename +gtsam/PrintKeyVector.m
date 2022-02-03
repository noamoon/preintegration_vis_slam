function varargout = PrintKeyVector(varargin)
      if length(varargin) == 3 && isa(varargin{1},'gtsam.KeyVector') && isa(varargin{2},'char') && isa(varargin{3},'gtsam.KeyFormatter')
        gtsam_wrapper(2504, varargin{:});
      elseif length(varargin) == 2 && isa(varargin{1},'gtsam.KeyVector') && isa(varargin{2},'char')
        gtsam_wrapper(2505, varargin{:});
      elseif length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        gtsam_wrapper(2506, varargin{:});
      else
        error('Arguments do not match any overload of function PrintKeyVector');
      end
