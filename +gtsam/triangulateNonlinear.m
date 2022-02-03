function varargout = triangulateNonlinear(varargin)
      if length(varargin) == 4 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3_S2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && size(varargin{4},1)==3 && size(varargin{4},2)==1
        varargout{1} = gtsam_wrapper(1089, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3DS2') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && size(varargin{4},1)==3 && size(varargin{4},2)==1
        varargout{1} = gtsam_wrapper(1090, varargin{:});
      elseif length(varargin) == 4 && isa(varargin{1},'gtsam.Pose3Vector') && isa(varargin{2},'gtsam.Cal3Bundler') && isa(varargin{3},'gtsam.Point2Vector') && isa(varargin{4},'double') && size(varargin{4},1)==3 && size(varargin{4},2)==1
        varargout{1} = gtsam_wrapper(1091, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3_S2') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1
        varargout{1} = gtsam_wrapper(1092, varargin{:});
      elseif length(varargin) == 3 && isa(varargin{1},'gtsam.CameraSetCal3Bundler') && isa(varargin{2},'gtsam.Point2Vector') && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1
        varargout{1} = gtsam_wrapper(1093, varargin{:});
      else
        error('Arguments do not match any overload of function triangulateNonlinear');
      end
