function varargout = writeBAL(varargin)
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.SfmData')
        varargout{1} = gtsam_wrapper(3102, varargin{:});
      else
        error('Arguments do not match any overload of function writeBAL');
      end
