function varargout = insertBackprojections(varargin)
      if length(varargin) == 5 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'gtsam.PinholeCameraCal3_S2') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double') && isa(varargin{5},'double')
        gtsam_wrapper(97, varargin{:});
      else
        error('Arguments do not match any overload of function insertBackprojections');
      end
