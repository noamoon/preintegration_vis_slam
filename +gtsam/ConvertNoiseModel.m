function varargout = ConvertNoiseModel(varargin)
      if length(varargin) == 2 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(3117, varargin{:});
      else
        error('Arguments do not match any overload of function ConvertNoiseModel');
      end
