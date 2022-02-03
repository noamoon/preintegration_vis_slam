%class SO3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SO3()
%SO3(Matrix R)
%
%-------Methods-------
%between(SO3 R) : returns gtsam::SO3
%compose(SO3 R) : returns gtsam::SO3
%equals(SO3 other, double tol) : returns bool
%inverse() : returns gtsam::SO3
%localCoordinates(SO3 R) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%retract(Vector v) : returns gtsam::SO3
%vec() : returns Vector
%
%-------Static Methods-------
%AxisAngle(Vector axis, double theta) : returns gtsam::SO3
%ClosestTo(Matrix M) : returns gtsam::SO3
%Expmap(Vector v) : returns gtsam::SO3
%FromMatrix(Matrix R) : returns gtsam::SO3
%identity() : returns gtsam::SO3
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns SO3
%
classdef SO3 < handle
  properties
    ptr_gtsamSO3 = 0
  end
  methods
    function obj = SO3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(500, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(501);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(502, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SO3 constructor');
      end
      obj.ptr_gtsamSO3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(503, obj.ptr_gtsamSO3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = between(this, varargin)
      % BETWEEN usage: between(SO3 R) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO3')
        varargout{1} = gtsam_wrapper(504, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(SO3 R) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO3')
        varargout{1} = gtsam_wrapper(505, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SO3 other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(506, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(507, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(SO3 R) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO3')
        varargout{1} = gtsam_wrapper(508, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.localCoordinates');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(509, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(510, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(511, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(512, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.retract');
    end

    function varargout = vec(this, varargin)
      % VEC usage: vec() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(513, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO3.vec');
    end

  end

  methods(Static = true)
    function varargout = AxisAngle(varargin)
      % AXISANGLE usage: AxisAngle(Vector axis, double theta) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(514, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO3.AxisAngle');
    end

    function varargout = ClosestTo(varargin)
      % CLOSESTTO usage: ClosestTo(Matrix M) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(515, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO3.ClosestTo');
    end

    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(516, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO3.Expmap');
    end

    function varargout = FromMatrix(varargin)
      % FROMMATRIX usage: FromMatrix(Matrix R) : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(517, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO3.FromMatrix');
    end

    function varargout = identity(varargin)
      % IDENTITY usage: identity() : returns gtsam.SO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(518, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO3.identity');
    end

  end
end
