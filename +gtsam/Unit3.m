%class Unit3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Unit3()
%Unit3(Point3 pose)
%
%-------Methods-------
%basis() : returns Matrix
%dim() : returns size_t
%equals(Unit3 pose, double tol) : returns bool
%equals(Unit3 expected, double tol) : returns bool
%localCoordinates(Unit3 s) : returns Vector
%point3() : returns Point3
%print(string s) : returns void
%retract(Vector v) : returns gtsam::Unit3
%skew() : returns Matrix
%
%-------Static Methods-------
%Dim() : returns size_t
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Unit3
%
classdef Unit3 < handle
  properties
    ptr_gtsamUnit3 = 0
  end
  methods
    function obj = Unit3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(711, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(712);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},1)==3 && size(varargin{1},2)==1
        my_ptr = gtsam_wrapper(713, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Unit3 constructor');
      end
      obj.ptr_gtsamUnit3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(714, obj.ptr_gtsamUnit3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = basis(this, varargin)
      % BASIS usage: basis() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(715, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.basis');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(716, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Unit3 pose, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Unit3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(717, this, varargin{:});
        return
      end
      % EQUALS usage: equals(Unit3 expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Unit3') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(718, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.equals');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(Unit3 s) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Unit3')
        varargout{1} = gtsam_wrapper(719, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.localCoordinates');
    end

    function varargout = point3(this, varargin)
      % POINT3 usage: point3() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(720, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.point3');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(721, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(722, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(723, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(724, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Unit3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = skew(this, varargin)
      % SKEW usage: skew() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(725, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Unit3.skew');
    end

  end

  methods(Static = true)
    function varargout = Dim(varargin)
      % DIM usage: Dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(726, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Unit3.Dim');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.Unit3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(727, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.Unit3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.Unit3.string_deserialize(sobj);
    end
  end
end
