%class StereoCamera, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%StereoCamera()
%StereoCamera(Pose3 pose, Cal3_S2Stereo K)
%
%-------Methods-------
%backproject(StereoPoint2 p) : returns Point3
%baseline() : returns double
%calibration() : returns gtsam::Cal3_S2Stereo
%dim() : returns size_t
%equals(StereoCamera camera, double tol) : returns bool
%localCoordinates(StereoCamera T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns gtsam::StereoPoint2
%retract(Vector d) : returns gtsam::StereoCamera
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns StereoCamera
%
classdef StereoCamera < handle
  properties
    ptr_gtsamStereoCamera = 0
  end
  methods
    function obj = StereoCamera(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(928, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(929);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Cal3_S2Stereo')
        my_ptr = gtsam_wrapper(930, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.StereoCamera constructor');
      end
      obj.ptr_gtsamStereoCamera = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(931, obj.ptr_gtsamStereoCamera);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = backproject(this, varargin)
      % BACKPROJECT usage: backproject(StereoPoint2 p) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoPoint2')
        varargout{1} = gtsam_wrapper(932, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.backproject');
    end

    function varargout = baseline(this, varargin)
      % BASELINE usage: baseline() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(933, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.baseline');
    end

    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3_S2Stereo
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(934, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.calibration');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(935, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(StereoCamera camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.StereoCamera') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(936, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(StereoCamera T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.StereoCamera')
        varargout{1} = gtsam_wrapper(937, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(938, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(939, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(940, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns gtsam.StereoPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(941, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.project');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.StereoCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(942, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.StereoCamera.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(943, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoCamera.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(944, varargin{:});
        return
      end

      error('Arguments do not match any overload of function StereoCamera.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.StereoCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(945, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.StereoCamera.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.StereoCamera.string_deserialize(sobj);
    end
  end
end
