%class NavState, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NavState()
%NavState(Rot3 R, Point3 t, Vector v)
%NavState(Pose3 pose, Vector v)
%
%-------Methods-------
%attitude() : returns gtsam::Rot3
%equals(NavState expected, double tol) : returns bool
%localCoordinates(NavState g) : returns Vector
%pose() : returns gtsam::Pose3
%position() : returns Point3
%print(string s) : returns void
%retract(Vector x) : returns gtsam::NavState
%velocity() : returns Vector
%
classdef NavState < handle
  properties
    ptr_gtsamNavState = 0
  end
  methods
    function obj = NavState(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3273, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3274);
      elseif nargin == 3 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},2)==1
        my_ptr = gtsam_wrapper(3275, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(3276, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NavState constructor');
      end
      obj.ptr_gtsamNavState = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3277, obj.ptr_gtsamNavState);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = attitude(this, varargin)
      % ATTITUDE usage: attitude() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3278, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.attitude');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(NavState expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NavState') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3279, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(NavState g) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NavState')
        varargout{1} = gtsam_wrapper(3280, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.localCoordinates');
    end

    function varargout = pose(this, varargin)
      % POSE usage: pose() : returns gtsam.Pose3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3281, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.pose');
    end

    function varargout = position(this, varargin)
      % POSITION usage: position() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3282, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.position');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3283, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3284, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector x) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(3285, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3286, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NavState.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = velocity(this, varargin)
      % VELOCITY usage: velocity() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3287, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NavState.velocity');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3288, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NavState.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NavState.string_deserialize(sobj);
    end
  end
end
