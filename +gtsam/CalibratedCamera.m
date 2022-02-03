%class CalibratedCamera, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%CalibratedCamera()
%CalibratedCamera(Pose3 pose)
%CalibratedCamera(Vector v)
%
%-------Methods-------
%dim() : returns size_t
%equals(CalibratedCamera camera, double tol) : returns bool
%localCoordinates(CalibratedCamera T2) : returns Vector
%pose() : returns gtsam::Pose3
%print(string s) : returns void
%project(Point3 point) : returns Point2
%range(Point3 point) : returns double
%range(Pose3 pose) : returns double
%range(CalibratedCamera camera) : returns double
%retract(Vector d) : returns gtsam::CalibratedCamera
%
%-------Static Methods-------
%Dim() : returns size_t
%Level(Pose2 pose2, double height) : returns gtsam::CalibratedCamera
%Project(Point3 cameraPoint) : returns Point2
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns CalibratedCamera
%
classdef CalibratedCamera < handle
  properties
    ptr_gtsamCalibratedCamera = 0
  end
  methods
    function obj = CalibratedCamera(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(892, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(893);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Pose3')
        my_ptr = gtsam_wrapper(894, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(895, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.CalibratedCamera constructor');
      end
      obj.ptr_gtsamCalibratedCamera = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(896, obj.ptr_gtsamCalibratedCamera);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(897, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(CalibratedCamera camera, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.CalibratedCamera') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(898, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(CalibratedCamera T2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.CalibratedCamera')
        varargout{1} = gtsam_wrapper(899, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(900, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.pose');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(901, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(902, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.print');
    end

    function varargout = project(this, varargin)
      % PROJECT usage: project(Point3 point) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(903, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.project');
    end

    function varargout = range(this, varargin)
      % RANGE usage: range(Point3 point) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(904, this, varargin{:});
        return
      end
      % RANGE usage: range(Pose3 pose) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(905, this, varargin{:});
        return
      end
      % RANGE usage: range(CalibratedCamera camera) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.CalibratedCamera')
        varargout{1} = gtsam_wrapper(906, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.range');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector d) : returns gtsam.CalibratedCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(907, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CalibratedCamera.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(908, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.CalibratedCamera.string_serialize');
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
        varargout{1} = gtsam_wrapper(909, varargin{:});
        return
      end

      error('Arguments do not match any overload of function CalibratedCamera.Dim');
    end

    function varargout = Level(varargin)
      % LEVEL usage: Level(Pose2 pose2, double height) : returns gtsam.CalibratedCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose2') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(910, varargin{:});
        return
      end

      error('Arguments do not match any overload of function CalibratedCamera.Level');
    end

    function varargout = Project(varargin)
      % PROJECT usage: Project(Point3 cameraPoint) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(911, varargin{:});
        return
      end

      error('Arguments do not match any overload of function CalibratedCamera.Project');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.CalibratedCamera
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(912, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.CalibratedCamera.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.CalibratedCamera.string_deserialize(sobj);
    end
  end
end
