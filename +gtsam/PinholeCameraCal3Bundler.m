%class PinholeCameraCal3Bundler, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PinholeCameraCal3Bundler()
%PinholeCameraCal3Bundler(Pose3 pose)
%PinholeCameraCal3Bundler(Pose3 pose, Cal3Bundler K)
%
%-------Methods-------
%backproject(Point2 p, double depth) : returns Point3
%calibration() : returns gtsam::Cal3Bundler
%dim() : returns size_t
%equals(PinholeCamera<gtsam::Cal3Bundler> camera, double tol) : returns bool
%localCoordinates(PinholeCamera<gtsam::Cal3Bundler> T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns Point2
%projectSafe(Point3 pw) : returns pair< Point2, bool >
%range(Point3 point) : returns double
%range(Pose3 pose) : returns double
%retract(Vector d) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%
%-------Static Methods-------
%Dim() : returns size_t
%Level(Cal3Bundler K, Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%Level(Pose2 pose, double height) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3Bundler K) : returns gtsam::PinholeCamera<gtsam::Cal3Bundler>
%Project(Point3 cameraPoint) : returns Point2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns PinholeCameraCal3Bundler
%
classdef PinholeCameraCal3Bundler < handle
  properties
    ptr_gtsamPinholeCameraCal3Bundler = 0
  end
  methods
    function obj = PinholeCameraCal3Bundler(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1021, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1022);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose3')
        my_ptr = gtsam_wrapper(1023, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Cal3Bundler')
        my_ptr = gtsam_wrapper(1024, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.PinholeCameraCal3Bundler constructor');
      end
      obj.ptr_gtsamPinholeCameraCal3Bundler = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1025, obj.ptr_gtsamPinholeCameraCal3Bundler);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = backproject(this, varargin)
      % BACKPROJECT usage: backproject(Point2 p, double depth) : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1026, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.backproject');
    end

    function varargout = calibration(this, varargin)
      % CALIBRATION usage: calibration() : returns gtsam.Cal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1027, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.calibration');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1028, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PinholeCamera<gtsam::Cal3Bundler> camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3Bundler>') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1029, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(PinholeCamera<gtsam::Cal3Bundler> T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.PinholeCamera<gtsam::Cal3Bundler>')
        varargout{1} = gtsam_wrapper(1030, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1031, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1032, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1033, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1034, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.project');
    end

    function varargout = projectSafe(this, varargin)
      % PROJECTSAFE usage: projectSafe(Point3 pw) : returns pair< Point2, bool >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1035, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.projectSafe');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1036, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(1037, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.PinholeCamera<gtsam::Cal3Bundler>
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1038, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1039, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.string_serialize');
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
        varargout{1} = gtsam_wrapper(1040, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Bundler.Dim');
    end

    function varargout = Level(varargin)
      % LEVEL usage: Level(Cal3Bundler K, Pose2 pose, double height) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Cal3Bundler') && isa(varargin{2},'gtsam.Pose2') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(1041, varargin{:});
        return
      end

      % LEVEL usage: Level(Pose2 pose, double height) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1042, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Bundler.Level');
    end

    function varargout = Lookat(varargin)
      % LOOKAT usage: Lookat(Point3 eye, Point3 target, Point3 upVector, Cal3Bundler K) : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},1)==3 && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.Cal3Bundler')
        varargout{1} = gtsam_wrapper(1043, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Bundler.Lookat');
    end

    function varargout = Project(varargin)
      % PROJECT usage: Project(Point3 cameraPoint) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1044, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PinholeCameraCal3Bundler.Project');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PinholeCameraCal3Bundler
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1045, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PinholeCameraCal3Bundler.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PinholeCameraCal3Bundler.string_deserialize(sobj);
    end
  end
end
