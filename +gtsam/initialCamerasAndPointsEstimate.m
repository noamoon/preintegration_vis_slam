function varargout = initialCamerasAndPointsEstimate(varargin)
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SfmData')
        varargout{1} = gtsam_wrapper(3104, varargin{:});
      else
        error('Arguments do not match any overload of function initialCamerasAndPointsEstimate');
      end
