%class PinholeCameraCal3Unified, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PinholeCameraCal3Unified()
%PinholeCameraCal3Unified(Pose3 pose)
%PinholeCameraCal3Unified(Pose3 pose, Cal3Unified K)
%
%-------Methods-------
%backproject(Point2 p, double depth) : returns Point3
%calibration() : returns gtsam::Cal3Unified
%dim() : returns size_t
%equals(PinholeCamera<gtsam::Cal3Unified> camera, double tol) : returns bool
%localCoordinates(PinholeCamera<gtsam::Cal3Unified> T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns Point2
%projectSafe(Point3 pw) : returns pair< Point2, bool >
%range(Point3 point) : returns double
%range(Pose3 pose) : returns double
%retract(Vector d) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%
%-------Static Methods-------
%Dim() : returns size_t
%Level(Cal3Unified K, Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%Level(Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3Unified K) : returns gtsam::PinholeCamera<gtsam::Cal3Unified>
%Project(Point3 cameraPoint) : returns Point2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns PinholeCameraCal3Unified
%
classdef PinholeCameraCal3Unified < handle
  properties
    ptr_gtsamPinholeCameraCal3Unified = 0
  end
  methods
    function obj = PinholeCameraCal3Unified(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(996, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(997);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose3')
        my_ptr = gtsam_wrapper(998, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Cal3Unified')
        my_ptr = gtsam_wrapper(999, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.PinholeCameraCal3Unified constructor');
      end
      obj.ptr_gtsamPinholeCameraCal3Unified = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1000, obj.ptr_gtsamPinholeCameraCal3Unified);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = backproject(this, varargin)
      % BACKPROJECT usage: backproject(Point2 p, double depth) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1001, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.backproject');
    end

    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1002, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.calibration');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1003, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PinholeCamera<gtsam::Cal3Unified> camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3Unified>') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1004, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(PinholeCamera<gtsam::Cal3Unified> T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3Unified>')
        varargout{1} = gtsam_wrapper(1005, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1006, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1007, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1008, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1009, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.project');
    end

    function varargout = projectSafe(this, varargin)
      % PROJECTSAFE usage: projectSafe(Point3 pw) : returns pair< Point2, bool >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1010, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.projectSafe');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1011, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1012, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.PinholeCamera<gtsam::Cal3Unified>
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1013, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1014, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.string_serialize');
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
        varargout{1} = gtsam_wrapper(1015, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Unified.Dim');
    end

    function varargout = Level(varargin)
      % LEVEL usage: Level(Cal3Unified K, Pose2 pose, double height) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Cal3Unified') && isa(varargin{2},'gtsam.Pose2') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(1016, varargin{:});
        return
      end

      % LEVEL usage: Level(Pose2 pose, double height) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1017, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Unified.Level');
    end

    function varargout = Lookat(varargin)
      % LOOKAT usage: Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3Unified K) : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.Cal3Unified')
        varargout{1} = gtsam_wrapper(1018, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Unified.Lookat');
    end

    function varargout = Project(varargin)
      % PROJECT usage: Project(Point3 cameraPoint) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1019, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Unified.Project');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1020, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Unified.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PinholeCameraCal3Unified.string_deserialize(sobj);
    end
  end
end
