%class EssentialMatrix, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%EssentialMatrix(Rot3 aRb, Unit3 aTb)
%
%-------Methods-------
%dim() : returns size_t
%direction() : returns gtsam::Unit3
%equals(EssentialMatrix pose, double tol) : returns bool
%error(Vector vA, Vector vB) : returns double
%localCoordinates(EssentialMatrix s) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%retract(Vector v) : returns gtsam::EssentialMatrix
%rotation() : returns gtsam::Rot3
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns EssentialMatrix
%
classdef EssentialMatrix < handle
  properties
    ptr_gtsamEssentialMatrix = 0
  end
  methods
    function obj = EssentialMatrix(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(728, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'gtsam.Unit3')
        my_ptr = gtsam_wrapper(729, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.EssentialMatrix constructor');
      end
      obj.ptr_gtsamEssentialMatrix = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(730, obj.ptr_gtsamEssentialMatrix);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(731, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.dim');
    end

    function varargout = direction(this, varargin)
      % DIRECTION usage: direction() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(732, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.direction');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(EssentialMatrix pose, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.EssentialMatrix') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(733, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(Vector vA, Vector vB) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(734, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.error');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(EssentialMatrix s) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.EssentialMatrix')
        varargout{1} = gtsam_wrapper(735, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.localCoordinates');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(736, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(737, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(738, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.EssentialMatrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(739, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.retract');
    end

    function varargout = rotation(this, varargin)
      % ROTATION usage: rotation() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(740, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrix.rotation');
    end

  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(741, varargin{:});
        return
      end

      error('Arguments do not match any overload of function EssentialMatrix.Dim');
    end

  end
end
