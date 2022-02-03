function varargout = triangulatePoint3(varargin)
      if length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1082, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3DS2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1083, varargin{:});
      elseif length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Bundler') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && isa(varargin{5},'logical')
        varargout{1} = gtsam_wrapper(1084, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1085, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1086, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Fisheye') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1087, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.CameraSetCal3Unified') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(1088, varargin{:});
      else
        error('Arguments do not match any overload of function triangulatePoint3');
      end
