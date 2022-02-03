%class PinholeCameraCal3_S2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PinholeCameraCal3_S2()
%PinholeCameraCal3_S2(Pose3 pose)
%PinholeCameraCal3_S2(Pose3 pose, Cal3_S2 K)
%
%-------Methods-------
%backproject(Point2 p, double depth) : returns Point3
%calibration() : returns gtsam::Cal3_S2
%dim() : returns size_t
%equals(PinholeCamera<gtsam::Cal3_S2> camera, double tol) : returns bool
%localCoordinates(PinholeCamera<gtsam::Cal3_S2> T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns Point2
%projectSafe(Point3 pw) : returns pair< Point2, bool >
%range(Point3 point) : returns double
%range(Pose3 pose) : returns double
%retract(Vector d) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%
%-------Static Methods-------
%Dim() : returns size_t
%Level(Cal3_S2 K, Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%Level(Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3_S2 K) : returns gtsam::PinholeCamera<gtsam::Cal3_S2>
%Project(Point3 cameraPoint) : returns Point2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns PinholeCameraCal3_S2
%
classdef PinholeCameraCal3_S2 < handle
  properties
    ptr_gtsamPinholeCameraCal3_S2 = 0
  end
  methods
    function obj = PinholeCameraCal3_S2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(946, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(947);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose3')
        my_ptr = gtsam_wrapper(948, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Cal3_S2')
        my_ptr = gtsam_wrapper(949, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.PinholeCameraCal3_S2 constructor');
      end
      obj.ptr_gtsamPinholeCameraCal3_S2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(950, obj.ptr_gtsamPinholeCameraCal3_S2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = backproject(this, varargin)
      % BACKPROJECT usage: backproject(Point2 p, double depth) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(951, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.backproject');
    end

    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(952, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.calibration');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(953, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PinholeCamera<gtsam::Cal3_S2> camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3_S2>') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(954, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(PinholeCamera<gtsam::Cal3_S2> T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3_S2>')
        varargout{1} = gtsam_wrapper(955, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(956, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(957, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(958, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(959, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.project');
    end

    function varargout = projectSafe(this, varargin)
      % PROJECTSAFE usage: projectSafe(Point3 pw) : returns pair< Point2, bool >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        [ varargout{1} varargout{2} ] = gtsam_wrapper(960, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.projectSafe');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(961, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(962, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.PinholeCamera<gtsam::Cal3_S2>
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(963, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(964, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.string_serialize');
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
        varargout{1} = gtsam_wrapper(965, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3_S2.Dim');
    end

    function varargout = Level(varargin)
      % LEVEL usage: Level(Cal3_S2 K, Pose2 pose, double height) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Cal3_S2') && isa(varargin{2},'gtsam.Pose2') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(966, varargin{:});
        return
      end

      % LEVEL usage: Level(Pose2 pose, double height) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(967, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3_S2.Level');
    end

    function varargout = Lookat(varargin)
      % LOOKAT usage: Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3_S2 K) : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.Cal3_S2')
        varargout{1} = gtsam_wrapper(968, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3_S2.Lookat');
    end

    function varargout = Project(varargin)
      % PROJECT usage: Project(Point3 cameraPoint) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(969, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3_S2.Project');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PinholeCameraCal3_S2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(970, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3_S2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PinholeCameraCal3_S2.string_deserialize(sobj);
    end
  end
end
